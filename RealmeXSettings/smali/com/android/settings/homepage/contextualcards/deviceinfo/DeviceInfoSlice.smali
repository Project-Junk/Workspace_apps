.class public Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;
.super Ljava/lang/Object;
.source "DeviceInfoSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->b:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    const v1, 0x7f080727

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    const v2, 0x7f120780

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->c()Landroid/content/Intent;

    move-result-object v2

    .line 1094
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 64
    invoke-static {v2, v0, v4, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 66
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/slices/a;->h:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v2, v3, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    .line 68
    invoke-static {v3}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    new-instance v3, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 69
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 1115
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->b:Landroid/telephony/SubscriptionManager;

    const/4 v5, 0x1

    .line 1116
    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1117
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    const v4, 0x7f12077e

    if-nez v3, :cond_2

    .line 1101
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1103
    :cond_2
    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/settingslib/b;->a(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1106
    :cond_3
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v4, v3, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    .line 71
    :goto_2
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 2110
    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 74
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

    .line 79
    sget-object v0, Lcom/android/settings/slices/a;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    const v1, 0x7f120780

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    const-class v2, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 85
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/deviceinfo/DeviceInfoSlice;->a:Landroid/content/Context;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/android/settings/slices/a;->h:Landroid/net/Uri;

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
