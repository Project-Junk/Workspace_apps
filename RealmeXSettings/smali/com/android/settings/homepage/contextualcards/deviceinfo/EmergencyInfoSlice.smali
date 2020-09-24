.class public Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;
.super Ljava/lang/Object;
.source "EmergencyInfoSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 7

    .line 45
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/slices/a;->i:Landroid/net/Uri;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 48
    new-instance v1, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    const v3, 0x7f1208ae

    .line 50
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    const v4, 0x7f1208ac

    .line 52
    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 1072
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->c()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    .line 1073
    invoke-static {v2, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1079
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    const v6, 0x7f08053b

    .line 1081
    invoke-static {v4, v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    .line 1083
    invoke-virtual {v6, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1079
    invoke-static {v2, v4, v5, v3}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 54
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

    .line 59
    sget-object v0, Lcom/android/settings/slices/a;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/EmergencyInfoSlice;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/accounts/EmergencyInfoPreferenceController;->getIntentAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
