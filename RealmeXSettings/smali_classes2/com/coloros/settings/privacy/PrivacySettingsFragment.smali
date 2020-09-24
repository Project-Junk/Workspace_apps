.class public Lcom/coloros/settings/privacy/PrivacySettingsFragment;
.super Lcom/coloros/settings/ColorSettingsHighlightableFragment;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private c:Landroidx/preference/Preference;

.field private d:Landroidx/preference/Preference;

.field private e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private h:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private i:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private j:Lcom/coloros/settings/privacy/a/g;

.field private k:Z

.field private l:Landroid/os/Handler;

.field private m:Lcom/coloros/settings/feature/c/a;

.field private n:Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 574
    new-instance v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$6;

    invoke-direct {v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$6;-><init>()V

    sput-object v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/feature/c/a;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->m:Lcom/coloros/settings/feature/c/a;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 564
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "privacy_entry"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "20012"

    const-string v2, "pw_privacy_link"

    invoke-static {p1, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;I)V
    .locals 2

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 570
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "privacy_pwd"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20012"

    const-string v1, "pw_privacy_new_pwd"

    .line 571
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic a(ZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->d()V

    return-void

    .line 321
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "oppo.settings.privacy.confirm"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    const-string p3, "only_privacy_confirm"

    .line 322
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 324
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/privacy/a/g;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v0

    .line 270
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "6Ybor28QRRMyftsLi4bN2w"

    invoke-static {v1, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->c:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    const v3, 0x7f1210fd

    goto :goto_0

    :cond_0
    const v3, 0x7f121105

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 274
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->d:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 275
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 277
    iget-object v3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v4, 0x7f1210c6

    invoke-virtual {p0, v4}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v3, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 281
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v3, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    if-eqz v0, :cond_3

    .line 283
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v3}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v3

    iget-object v3, v3, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f1210f5

    goto :goto_2

    :cond_2
    const v3, 0x7f1210f4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 286
    :cond_3
    iget-object v3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v3, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 288
    :goto_3
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_4

    .line 289
    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 291
    :cond_4
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->h:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 292
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->i:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v2, :cond_5

    .line 293
    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 295
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updatePreference isSecure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLogin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrivacySettingsFragment"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    if-nez v1, :cond_6

    goto :goto_4

    .line 300
    :cond_6
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    .line 298
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    :cond_8
    const/4 v3, 0x0

    .line 301
    :goto_5
    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.filemanager.FILE_SAFE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic lambda$-qS39BhYMXIjhL_bIW7i-LUVShM(Lcom/coloros/settings/privacy/PrivacySettingsFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->a(ZLandroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 492
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "PrivacySettingsFragment"

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_f

    .line 495
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult SET_NEW_PASSWORD "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    const-string p2, "privacy_password_modify"

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x3

    const-string v5, "confirm_challenge"

    if-ne p1, v4, :cond_6

    if-ne p2, v1, :cond_5

    .line 500
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    .line 501
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->m:Lcom/coloros/settings/feature/c/a;

    .line 4054
    iput-boolean v2, p1, Lcom/coloros/settings/feature/c/a;->a:Z

    if-eqz p3, :cond_4

    .line 503
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 504
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "fragment mChallenge "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "data"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 506
    invoke-direct {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->b()V

    return-void

    .line 508
    :cond_3
    invoke-direct {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->c()V

    return-void

    .line 511
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->c()V

    return-void

    .line 514
    :cond_5
    invoke-direct {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->c()V

    return-void

    :cond_6
    const/4 v4, 0x6

    const/4 v6, 0x2

    if-ne p1, v4, :cond_a

    if-ne p2, v1, :cond_f

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onActivityResult MODIFY_EMAIL data "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    move p2, v2

    goto :goto_2

    :cond_7
    move p2, v3

    :goto_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_f

    .line 520
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 521
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult  MODIFY_EMAIL challenge "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 4360
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    new-instance v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$3;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;[B)V

    invoke-static {p2, v6, p3, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V

    :cond_9
    return-void

    :cond_a
    const/4 v4, 0x4

    const/4 v7, 0x5

    if-ne p1, v4, :cond_b

    if-ne p2, v1, :cond_f

    .line 529
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "question_choose_type"

    .line 530
    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    .line 532
    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const p2, 0x7f1212c2

    .line 534
    invoke-virtual {p0, p2}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "custom_title"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/coloros/settings/privacy/SafeQuestionActivity;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    invoke-virtual {p0, p1, v7}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_b
    if-ne p1, v7, :cond_d

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "modify answer "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p2, v1, :cond_c

    goto :goto_4

    :cond_c
    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    if-ne p1, v6, :cond_f

    if-ne p2, v1, :cond_f

    if-eqz p3, :cond_f

    .line 542
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 543
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/g;->a([B)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 545
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "coloros_fingerprint_file_encryption_switch"

    .line 546
    invoke-static {p2, p3, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p3, "coloros_fingerprint_app_encryption_switch"

    .line 547
    invoke-static {p2, p3, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p3, "coloros_face_unlock_file_encryption_switch"

    .line 548
    invoke-static {p2, p3, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p3, "coloros_face_unlock_app_encryption_switch"

    .line 549
    invoke-static {p2, p3, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p3, "privacy_quesion_type_choose"

    .line 550
    invoke-static {p2, p3, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p3, "privacy_quesion_detail_choose"

    const-string v1, ""

    .line 551
    invoke-static {p2, p3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 552
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 553
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/settings/privacy/c;->c(Landroid/content/Context;)V

    .line 554
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->a(Landroid/content/Context;I)V

    .line 555
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 557
    :cond_e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onActivityResult deletePassword "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 111
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500e0

    .line 112
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->addPreferencesFromResource(I)V

    const-string v0, "privacy_password"

    .line 113
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->c:Landroidx/preference/Preference;

    const-string v0, "privacy_password_modify"

    .line 114
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->d:Landroidx/preference/Preference;

    const-string v0, "privacy_answer_modify"

    .line 115
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->f:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "privacy_email_modify"

    .line 116
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->e:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "privacy_account_modify"

    .line 117
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ap(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "privacy_password_forget"

    .line 121
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 122
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 125
    :cond_1
    iput-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->g:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    :goto_0
    const-string v0, "privacy_apps_encryption"

    .line 128
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->h:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "privacy_file_safe"

    .line 129
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->i:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getContext()Landroid/content/Context;

    .line 1051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "privacy_features"

    .line 132
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    .line 133
    iget-object v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->i:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v2, :cond_2

    .line 134
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 135
    iput-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->i:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 139
    :cond_2
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    iget-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/g$d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PrivacySettingsFragment"

    invoke-static {v3, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/coloros/settings/feature/c/a;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/coloros/settings/feature/c/a;-><init>(Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->m:Lcom/coloros/settings/feature/c/a;

    .line 142
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    const v3, 0x7f1210fa

    .line 144
    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "param_setup_privacy"

    .line 148
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->o:Z

    :cond_5
    if-eqz p1, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    const-string v3, "has_confirmed_privacy_password"

    .line 154
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    .line 155
    iget-boolean p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    if-nez p1, :cond_7

    .line 156
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 162
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->o:Z

    if-nez p1, :cond_9

    if-eqz v0, :cond_8

    .line 164
    iget-boolean p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    xor-int/2addr p1, v2

    goto :goto_3

    :cond_8
    move p1, v2

    goto :goto_3

    :cond_9
    move p1, v1

    :goto_3
    if-eqz p1, :cond_d

    .line 1235
    new-instance p1, Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;

    invoke-direct {p1, p0, v1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;B)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->n:Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;

    .line 1236
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "oppo.intent.action.FINISH_PRIVACY_SETTINGS"

    .line 1237
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->n:Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;

    invoke-virtual {v0, v3, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 172
    iput-boolean v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    .line 173
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->m:Lcom/coloros/settings/feature/c/a;

    .line 2054
    iput-boolean v1, p1, Lcom/coloros/settings/feature/c/a;->a:Z

    .line 2191
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    iget p1, p1, Lcom/coloros/settings/privacy/a/g$d;->a:I

    .line 2192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "only_privacy_confirm"

    .line 2193
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "confirm_password_type"

    .line 2194
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "only_privacy_settings_check_on_create"

    .line 2195
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    if-eq p1, v2, :cond_c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_c

    if-eq p1, v1, :cond_b

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b

    const/4 v2, 0x5

    if-eq p1, v2, :cond_a

    goto :goto_4

    .line 2208
    :cond_a
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/coloros/settings/privacy/ConfirmPatternPrivacy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2209
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 2204
    :cond_b
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/coloros/settings/privacy/ConfirmComplexPrivacy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2205
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 2199
    :cond_c
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/coloros/settings/privacy/ConfirmNumberPrivacy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2200
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 176
    :cond_d
    iput-boolean v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    .line 177
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->m:Lcom/coloros/settings/feature/c/a;

    .line 3054
    iput-boolean v2, p1, Lcom/coloros/settings/feature/c/a;->a:Z

    .line 179
    :goto_4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->l:Landroid/os/Handler;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 257
    invoke-super {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->onDestroyView()V

    .line 258
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->n:Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->n:Lcom/coloros/settings/privacy/PrivacySettingsFragment$a;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 447
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 448
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "privacy_account_modify"

    .line 449
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPreferenceChange checked: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivacySettingsFragment"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 452
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "6Ybor28QRRMyftsLi4bN2w"

    invoke-static {p2, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "onPreferenceChange startConfirmAccount."

    .line 453
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V

    invoke-static {p2, v0}, Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;Lcom/coloros/settings/privacy/SafeQuestionActivity$a;)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$5;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V

    invoke-static {p2, v0, v1}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->reqToken(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    :goto_0
    return p1

    .line 482
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 483
    iget-object p2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "pw_privacy_account"

    invoke-static {p2, v0, p1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 9

    .line 390
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasConfirm = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivacySettingsFragment"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-boolean v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    if-nez v1, :cond_0

    .line 393
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    :cond_0
    const-string v1, "privacy_password"

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 396
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3307
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/privacy/c;->e(Landroid/content/Context;)Z

    move-result v0

    .line 3308
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121100

    .line 3309
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    const v2, 0x7f121101

    .line 3311
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v2, 0x7f1210fe

    .line 3313
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    :goto_0
    const/high16 v2, 0x1040000

    .line 3315
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    if-eqz v0, :cond_2

    const v2, 0x7f1210ff

    goto :goto_1

    :cond_2
    const v2, 0x7f121706

    .line 3316
    :goto_1
    new-instance v3, Lcom/coloros/settings/privacy/-$$Lambda$PrivacySettingsFragment$-qS39BhYMXIjhL_bIW7i-LUVShM;

    invoke-direct {v3, p0, v0}, Lcom/coloros/settings/privacy/-$$Lambda$PrivacySettingsFragment$-qS39BhYMXIjhL_bIW7i-LUVShM;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;Z)V

    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 3327
    invoke-virtual {v1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 3328
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 3329
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3330
    iget-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;Landroid/content/res/Resources;)V

    goto/16 :goto_2

    .line 402
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 403
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v0, v5}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "privacy_password_modify"

    .line 407
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x4

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result v1

    if-nez v1, :cond_5

    .line 408
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "choose_password_type"

    .line 409
    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0, v0, v5}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_5
    const-string v1, "privacy_answer_modify"

    .line 413
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v7, "only_privacy_confirm"

    const-string v8, "oppo.settings.privacy.confirm"

    if-eqz v1, :cond_6

    .line 414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0, v6}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_6
    const-string v1, "privacy_email_modify"

    .line 418
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "showEmailDialog challenge "

    .line 3334
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->j:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    iget-object v0, v0, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    .line 3336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3337
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3339
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x6

    .line 3340
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 3342
    :cond_7
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1210f3

    .line 3343
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v2, v5}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1210f1

    .line 3344
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1210f2

    .line 3345
    new-instance v2, Lcom/coloros/settings/privacy/PrivacySettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$2;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V

    invoke-virtual {v1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f120f85

    .line 3354
    invoke-virtual {v1, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 3355
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    goto :goto_2

    :cond_8
    const-string v1, "privacy_apps_encryption"

    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 421
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v4}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->a(I)V

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.safe.action.APP_PROTECT_LIST_ACTIVITY_FROM_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_9
    const-string v1, "privacy_file_safe"

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 426
    iget-object v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v5}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->a(I)V

    .line 428
    invoke-direct {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->d()V

    .line 430
    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 243
    invoke-super {p0}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->onResume()V

    .line 244
    invoke-direct {p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->b()V

    .line 245
    new-instance v0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/PrivacySettingsFragment$1;-><init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V

    .line 251
    iget-object v1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->m:Lcom/coloros/settings/feature/c/a;

    const-string v2, "privacy_password"

    invoke-virtual {v1, v2, v0}, Lcom/coloros/settings/feature/c/a;->a(Ljava/lang/String;Lcom/coloros/settings/feature/c/a$a;)V

    .line 252
    invoke-interface {v0}, Lcom/coloros/settings/feature/c/a$a;->onUpdate()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 185
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->k:Z

    const-string v1, "has_confirmed_privacy_password"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    invoke-super {p0, p1}, Lcom/coloros/settings/ColorSettingsHighlightableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
