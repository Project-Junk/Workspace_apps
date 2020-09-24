.class public Lcom/coloros/settings/feature/security/SimLockFeature;
.super Lcom/color/injector/adaptor/g;
.source "SimLockFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "sim_lock"
.end annotation


# static fields
.field private static final PIN_EDIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimLockFeature"


# instance fields
.field private mSimStateReceiver:Lcom/coloros/settings/receiver/a;

.field private mSubscription:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/security/SimLockFeature;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSubscription:I

    return p0
.end method

.method private isIccCardActivated(Landroid/content/Context;)Z
    .locals 2

    .line 225
    iget v0, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSubscription:I

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 234
    :try_start_0
    invoke-static {p1}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p1

    .line 236
    iget v1, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSubscription:I

    invoke-virtual {p1, v1}, Landroid/telephony/ColorOSTelephonyManager;->colorIsQcomSubActive(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "e="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SimLockFeature"

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method static synthetic lambda$onCreate$0(Lcom/android/settings/IccLockSettings;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 60
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->b:Z

    .line 62
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->b:Z

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 63
    iput v0, p0, Lcom/android/settings/IccLockSettings;->a:I

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->a()V

    const/4 p0, 0x0

    return p0
.end method

.method private startOppoPinEidtorActivity(Lcom/android/settings/IccLockSettings;)V
    .locals 4

    .line 211
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1207fb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 215
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/OppoEditPinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    iget-object v1, p1, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v2, p1, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/settings/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 218
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "message"

    .line 219
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget v1, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSubscription:I

    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/IccLockSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getPreferenceLayoutResId(I)I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f150066

    return p1
.end method

.method public handlePinModifyClick()Z
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handlePinToggleClick()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/android/settings/IccLockSettings;)V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockFeature"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    if-eqz p3, :cond_4

    const-string v2, "pin"

    .line 174
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 176
    iget-object v2, p4, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v2, p3}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    :cond_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 179
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, " positiveResult="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pin.length="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .line 181
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult mDialogState="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p4, Lcom/android/settings/IccLockSettings;->a:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p2, p4, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p4, p2, p1}, Lcom/android/settings/IccLockSettings;->a(Lcom/android/settings/EditPinPreference;Z)V

    :cond_5
    return-void
.end method

.method public onCreate(Lcom/android/settings/IccLockSettings;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 59
    iget-object v0, p1, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    new-instance v1, Lcom/coloros/settings/feature/security/-$$Lambda$SimLockFeature$P7UE8RV3iUZCUavp3lm2gERs4oM;

    invoke-direct {v1, p1}, Lcom/coloros/settings/feature/security/-$$Lambda$SimLockFeature$P7UE8RV3iUZCUavp3lm2gERs4oM;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    iget-object v0, p1, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    new-instance v1, Lcom/coloros/settings/feature/security/SimLockFeature$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/security/SimLockFeature$1;-><init>(Lcom/coloros/settings/feature/security/SimLockFeature;Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    iget v0, p1, Lcom/android/settings/IccLockSettings;->a:I

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->a()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->b()V

    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSubscription:I

    .line 85
    new-instance v0, Lcom/coloros/settings/receiver/a;

    invoke-direct {v0}, Lcom/coloros/settings/receiver/a;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oppo.intent.action.SUBINFO_STATE_CHANGE"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/receiver/a;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    new-instance v1, Lcom/coloros/settings/feature/security/SimLockFeature$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/security/SimLockFeature$2;-><init>(Lcom/coloros/settings/feature/security/SimLockFeature;Lcom/android/settings/IccLockSettings;)V

    .line 1107
    iput-object v1, v0, Lcom/coloros/settings/receiver/a;->b:Lcom/coloros/settings/receiver/a$a;

    return-void
.end method

.method public onDestroy(Lcom/android/settings/IccLockSettings;)V
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSimStateReceiver:Lcom/coloros/settings/receiver/a;

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/receiver/a;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public registerReceiver()Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPhoneValue(Lcom/android/settings/IccLockSettings;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 192
    :try_start_0
    iget v1, p0, Lcom/coloros/settings/feature/security/SimLockFeature;->mSubscription:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    .line 195
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/SimLockFeature;->updatePreferences(Lcom/android/settings/IccLockSettings;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "SimLockFeature"

    const-string v1, "setPhoneValue SecurityException : call requires permission which may be rejected by user"

    .line 197
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public showPinDialog(Lcom/android/settings/IccLockSettings;)Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/SimLockFeature;->startOppoPinEidtorActivity(Lcom/android/settings/IccLockSettings;)V

    const/4 p1, 0x1

    return p1
.end method

.method public showTabLayout()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updatePreferences(Lcom/android/settings/IccLockSettings;)Z
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/SimLockFeature;->isIccCardActivated(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p1, Lcom/android/settings/IccLockSettings;->c:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 146
    iget-object v1, p1, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 147
    iget-object v1, p1, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 148
    iget-object p1, p1, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p1, Lcom/android/settings/IccLockSettings;->e:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 151
    iget-object p1, p1, Lcom/android/settings/IccLockSettings;->d:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    :goto_0
    return v2
.end method
