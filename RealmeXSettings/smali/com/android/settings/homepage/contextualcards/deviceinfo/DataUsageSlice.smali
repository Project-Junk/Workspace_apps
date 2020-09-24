.class public Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;
.super Ljava/lang/Object;
.source "DataUsageSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# static fields
.field private static final a:J


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 11

    .line 66
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v1, 0x7f080821

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v2, 0x7f1206fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1102
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->c()Landroid/content/Intent;

    move-result-object v2

    .line 1103
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 69
    invoke-static {v2, v0, v4, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 71
    new-instance v2, Lcom/android/settingslib/net/a;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v2}, Lcom/android/settingslib/net/a;->b()Lcom/android/settingslib/net/a$a;

    move-result-object v2

    .line 73
    new-instance v3, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    sget-object v6, Lcom/android/settings/slices/a;->g:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v3, v5, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    .line 76
    invoke-static {v5}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v3

    new-instance v5, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 77
    invoke-virtual {v5, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    .line 78
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/datausage/f;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 1108
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-wide v6, v2, Lcom/android/settingslib/net/a$a;->f:J

    const/16 v8, 0xa

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v5

    .line 1110
    new-instance v6, Landroid/text/SpannableString;

    iget-object v7, v5, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1111
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    iget-object v8, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v9, 0x1030042

    invoke-direct {v7, v8, v9}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 1113
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 1111
    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1114
    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v8, 0x7f12070d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v6, v8, v4

    iget-object v5, v5, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v8, v6

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 80
    invoke-virtual {v3, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 1120
    iget-wide v7, v2, Lcom/android/settingslib/net/a$a;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gtz v2, :cond_0

    .line 1122
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v4, 0x7f120354

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1124
    :cond_0
    sget-wide v9, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->a:J

    div-long/2addr v7, v9

    long-to-int v2, v7

    if-gtz v2, :cond_1

    .line 1125
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v4, 0x7f120353

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    .line 1126
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f100010

    new-array v6, v6, [Ljava/lang/Object;

    .line 1127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    .line 1126
    invoke-virtual {v5, v7, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 81
    :goto_0
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 82
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_1

    .line 84
    :cond_2
    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v4, 0x7f120e85

    .line 85
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 88
    :goto_1
    invoke-virtual {v1}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/settings/slices/a;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const v1, 0x7f12070b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    const-class v2, Lcom/android/settings/datausage/DataUsageSummary;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 94
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DataUsageSlice;->b:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->g:Landroid/net/Uri;

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
