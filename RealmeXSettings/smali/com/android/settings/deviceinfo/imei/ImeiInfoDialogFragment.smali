.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ImeiInfoDialogFragment.java"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/CharSequence;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 88
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12077e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 3
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "ImeiInfoDialog"

    .line 48
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_key_slot_id"

    .line 50
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "arg_key_dialog_title"

    .line 51
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;-><init>()V

    .line 53
    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4d8

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_key_slot_id"

    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "arg_key_dialog_title"

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    new-instance v1, Lcom/android/settings/deviceinfo/imei/a;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/imei/a;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V

    .line 70
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    const v2, 0x104000a

    .line 72
    invoke-virtual {p1, v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0158

    .line 74
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a:Landroid/view/View;

    .line 1096
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TelephonyManager for this slot is null. Invalid slot? id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/settings/deviceinfo/imei/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeiInfoDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1100
    :cond_0
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    const v3, 0x7f0a0321

    const v4, 0x7f0a0322

    const-string v5, ""

    if-ne v0, v2, :cond_7

    .line 1108
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1109
    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v6, 0x7f0a03d5

    iget-object v7, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    if-eqz v7, :cond_1

    .line 1161
    iget-object v7, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    iget v8, v1, Lcom/android/settings/deviceinfo/imei/a;->d:I

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v5

    .line 1109
    :goto_0
    invoke-direct {v2, v6, v7}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 1112
    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v6, 0x7f0a03f3

    iget-object v7, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    iget-object v8, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    .line 1113
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v5

    .line 1112
    :goto_1
    invoke-direct {v2, v6, v7}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    const v2, 0x7f050016

    .line 1116
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1117
    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v6, 0x7f0a03f2

    const v7, 0x7f12154a

    .line 1118
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-direct {v2, v6, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 1121
    :cond_3
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v2, 0x7f0a0515

    .line 2150
    iget-object v6, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    if-eqz v6, :cond_4

    iget-object v5, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v5

    .line 1121
    :cond_4
    invoke-direct {v0, v2, v5}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 1123
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_6

    .line 2155
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    .line 1125
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    iget v5, v1, Lcom/android/settings/deviceinfo/imei/a;->d:I

    .line 1126
    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/deviceinfo/imei/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1125
    invoke-direct {v0, v4, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 1127
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    iget v1, v1, Lcom/android/settings/deviceinfo/imei/a;->d:I

    .line 1128
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1127
    invoke-direct {v0, v3, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    goto :goto_4

    .line 1131
    :cond_6
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v1, 0x7f0a02df

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(I)V

    goto :goto_4

    .line 3136
    :cond_7
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    iget v6, v1, Lcom/android/settings/deviceinfo/imei/a;->d:I

    .line 3138
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/deviceinfo/imei/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v5

    .line 3136
    :goto_3
    invoke-direct {v0, v4, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 3139
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->c:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/settings/deviceinfo/imei/a;->b:Landroid/telephony/TelephonyManager;

    iget v4, v1, Lcom/android/settings/deviceinfo/imei/a;->d:I

    .line 3142
    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v2

    .line 3141
    invoke-static {v2}, Lcom/android/settings/deviceinfo/imei/a;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3139
    :cond_9
    invoke-direct {v0, v3, v5}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 3144
    iget-object v0, v1, Lcom/android/settings/deviceinfo/imei/a;->a:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v1, 0x7f0a0129

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a(I)V

    .line 76
    :goto_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
