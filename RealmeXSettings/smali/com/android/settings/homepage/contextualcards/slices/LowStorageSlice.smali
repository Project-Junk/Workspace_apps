.class public Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;
.super Ljava/lang/Object;
.source "LowStorageSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->c()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 118
    invoke-static {v0, p3, v2, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 122
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 123
    invoke-virtual {v1, p3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p3

    .line 124
    invoke-virtual {p3, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    .line 126
    invoke-virtual {p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 10

    .line 61
    new-instance v0, Lcom/android/settingslib/deviceinfo/c;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-direct {v0, v1}, Lcom/android/settingslib/deviceinfo/c;-><init>(Landroid/os/storage/StorageManager;)V

    .line 61
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/b;->a(Lcom/android/settingslib/deviceinfo/e;)Lcom/android/settingslib/deviceinfo/b;

    move-result-object v0

    .line 63
    iget-wide v1, v0, Lcom/android/settingslib/deviceinfo/b;->b:J

    iget-wide v3, v0, Lcom/android/settingslib/deviceinfo/b;->a:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    iget-wide v3, v0, Lcom/android/settingslib/deviceinfo/b;->b:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    .line 66
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    iget-wide v5, v0, Lcom/android/settingslib/deviceinfo/b;->a:J

    invoke-static {v4, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/a;->m:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    .line 70
    invoke-static {v5}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v5

    .line 69
    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v4

    .line 71
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const v6, 0x7f080851

    invoke-static {v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    const-wide v6, 0x3feb333333333333L    # 0.85

    cmpg-double v1, v1, v6

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-gez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const v8, 0x7f12159a

    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 76
    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const v9, 0x7f1215a1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v0, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-direct {p0, v1, v0, v5}, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v7}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const v8, 0x7f121586

    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 86
    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const v9, 0x7f120d0e

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v0, v6, v7

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-direct {p0, v1, v0, v5}, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a(Ljava/lang/CharSequence;Ljava/lang/String;Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 96
    sget-object v0, Lcom/android/settings/slices/a;->m:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const v1, 0x7f12157b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    const-class v2, Lcom/android/settings/deviceinfo/StorageSettings;

    .line 110
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 109
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/LowStorageSlice;->a:Landroid/content/Context;

    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->m:Landroid/net/Uri;

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
