.class public Lcom/android/settings/ResetNetwork;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetwork.java"


# instance fields
.field a:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Landroid/widget/Spinner;

.field private f:Landroid/widget/Button;

.field private final g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 140
    new-instance v0, Lcom/android/settings/ResetNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetwork$1;-><init>(Lcom/android/settings/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "euicc"

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 234
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "euicc_provisioned"

    .line 238
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "development_settings_enabled"

    .line 239
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/android/settings/ResetNetwork;)Z
    .locals 3

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1096
    new-instance v1, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const p0, 0x7f121245

    .line 1097
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/16 v0, 0x37

    .line 1096
    invoke-virtual {v1, v0, p0}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 11

    .line 163
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->d:Landroid/view/View;

    const v1, 0x7f0a0566

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->e:Landroid/widget/Spinner;

    .line 164
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->d:Landroid/view/View;

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->a:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->d:Landroid/view/View;

    const v1, 0x7f0a0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->b:Landroid/widget/CheckBox;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 168
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->c:Ljava/util/List;

    .line 169
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->c:Ljava/util/List;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 171
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 172
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 175
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 178
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 179
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 183
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ResetNetwork;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v5, p0, Lcom/android/settings/ResetNetwork;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 186
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    if-ne v8, v0, :cond_3

    .line 188
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 190
    :cond_3
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 192
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 194
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 195
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 197
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 198
    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 199
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    const/4 v9, 0x2

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v9

    const-string v7, "MCC:%s MNC:%s Slot:%s Id:%s"

    .line 198
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 201
    :cond_6
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v7, 0x1090008

    invoke-direct {v0, v5, v7, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v4, 0x1090009

    .line 205
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 206
    iget-object v4, p0, Lcom/android/settings/ResetNetwork;->e:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_8

    .line 209
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 211
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 214
    :cond_9
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->d:Landroid/view/View;

    const v1, 0x7f0a0330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->f:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/ResetNetwork;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 219
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->a:Landroid/view/View;

    new-instance v1, Lcom/android/settings/ResetNetwork$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetNetwork$2;-><init>(Lcom/android/settings/ResetNetwork;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public static synthetic lambda$ah9iDDuekNurrT7OYD0pSnJT3tQ(Lcom/android/settings/ResetNetwork;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->e:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 122
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 123
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->a:Landroid/view/View;

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "erase_esim"

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/ResetNetworkConfirm;

    .line 128
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f121240

    .line 1063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x53

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->a()V

    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->b()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f121245

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_network_reset"

    .line 246
    invoke-static {p3, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p3

    .line 248
    invoke-virtual {p2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 249
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 248
    invoke-static {p2, v1, v2}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 252
    new-instance p1, Lcom/android/settings/enterprise/a;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    .line 253
    invoke-virtual {p1, v1, p3}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$ResetNetwork$ah9iDDuekNurrT7OYD0pSnJT3tQ;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$ResetNetwork$ah9iDDuekNurrT7OYD0pSnJT3tQ;-><init>(Lcom/android/settings/ResetNetwork;)V

    .line 254
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    .line 256
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    const p2, 0x7f0d029f

    .line 259
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->d:Landroid/view/View;

    .line 261
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->b()V

    .line 262
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->d:Landroid/view/View;

    return-object p1

    :cond_2
    :goto_0
    const p2, 0x7f0d01e6

    .line 250
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
