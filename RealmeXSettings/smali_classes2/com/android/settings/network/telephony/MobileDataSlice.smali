.class public Lcom/android/settings/network/telephony/MobileDataSlice;
.super Ljava/lang/Object;
.source "MobileDataSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/telephony/SubscriptionManager;

.field private final c:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    .line 70
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->b:Landroid/telephony/SubscriptionManager;

    .line 71
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method protected static a(Landroid/telephony/SubscriptionManager;)I
    .locals 0

    .line 151
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0
.end method

.method private d()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->c:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 10

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    const v1, 0x7f0807ca

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    const v2, 0x7f120d9c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v2

    .line 1188
    new-instance v3, Lcom/android/settings/network/AirplaneModePreferenceController;

    iget-object v4, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    const-string v5, "key"

    invoke-direct {v3, v4, v5}, Lcom/android/settings/network/AirplaneModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v3}, Lcom/android/settings/network/AirplaneModePreferenceController;->isChecked()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 2179
    :cond_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->b:Landroid/telephony/SubscriptionManager;

    .line 2180
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getSelectableSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 2182
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-nez v3, :cond_2

    return-object v4

    .line 3160
    :cond_2
    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->b:Landroid/telephony/SubscriptionManager;

    .line 3161
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_1

    .line 3166
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 92
    :goto_1
    iget-object v6, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    invoke-virtual {p0, v6}, Lcom/android/settings/network/telephony/MobileDataSlice;->c(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3170
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->c()Landroid/content/Intent;

    move-result-object v7

    .line 3171
    iget-object v8, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    invoke-static {v8, v5, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 94
    invoke-static {v7, v0, v5, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->d()Z

    move-result v5

    .line 96
    invoke-static {v6, v4, v5}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 99
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object v6, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    .line 4112
    sget-object v7, Lcom/android/settings/slices/a;->o:Landroid/net/Uri;

    const-wide/16 v8, -0x1

    .line 99
    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 101
    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 103
    invoke-virtual {v5, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 105
    invoke-virtual {v1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    .line 118
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataSlice;->d()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 120
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->b:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileDataSlice;->a(Landroid/telephony/SubscriptionManager;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 112
    sget-object v0, Lcom/android/settings/slices/a;->o:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 3

    .line 141
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice;->a:Landroid/content/Context;

    const-class v2, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/c;",
            ">;"
        }
    .end annotation

    .line 146
    const-class v0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 134
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
