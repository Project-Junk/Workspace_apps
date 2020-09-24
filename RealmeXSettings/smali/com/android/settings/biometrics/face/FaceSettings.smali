.class public Lcom/android/settings/biometrics/face/FaceSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FaceSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/os/UserManager;

.field private b:Landroid/hardware/face/FaceManager;

.field private c:I

.field private d:[B

.field private e:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

.field private f:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

.field private g:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/preference/Preference;

.field private k:Landroidx/preference/Preference;

.field private final n:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lcom/android/settings/biometrics/face/FaceSettings$1;

    invoke-direct {v0}, Lcom/android/settings/biometrics/face/FaceSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/biometrics/face/FaceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$SkTnwCQkhE6yr0QC0c89asWYnVQ;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceSettings$SkTnwCQkhE6yr0QC0c89asWYnVQ;-><init>(Lcom/android/settings/biometrics/face/FaceSettings;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->n:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$a;

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 85
    invoke-static {p0}, Lcom/android/settings/m;->j(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 76
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->k:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsVideoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsKeyguardPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsFooterPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsConfirmPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static synthetic lambda$SkTnwCQkhE6yr0QC0c89asWYnVQ(Lcom/android/settings/biometrics/face/FaceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->c()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "FaceSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-static {p1}, Lcom/android/settings/biometrics/face/FaceSettings;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->h:Ljava/util/List;

    .line 216
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/a;

    .line 217
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    if-eqz v1, :cond_2

    .line 218
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->e:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    goto :goto_0

    .line 219
    :cond_2
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    if-eqz v1, :cond_3

    .line 220
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->f:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    .line 221
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->f:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->n:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$a;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setListener(Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController$a;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->f:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    goto :goto_0

    .line 223
    :cond_3
    instance-of v1, v0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    if-eqz v1, :cond_1

    .line 224
    check-cast v0, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->g:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    .line 225
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->g:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setActivity(Lcom/android/settings/SettingsActivity;)V

    goto :goto_0

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->h:Ljava/util/List;

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e7

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15010f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->b:Landroid/hardware/face/FaceManager;

    iget p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    invoke-virtual {p1, p2}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    if-eqz p3, :cond_1

    const-string p1, "hw_auth_token"

    .line 182
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    .line 184
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    if-eqz p1, :cond_1

    .line 185
    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->e:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {p2, p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->setToken([B)V

    .line 186
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->g:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    invoke-virtual {p1, p2}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setToken([B)V

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    if-nez p1, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->a:Landroid/os/UserManager;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->b:Landroid/hardware/face/FaceManager;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    .line 117
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    const-string v0, "security_settings_face_keyguard"

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    const-string v3, "security_settings_face_app"

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/settings/biometrics/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    const-string v4, "security_settings_face_require_attention"

    .line 122
    invoke-virtual {p0, v4}, Lcom/android/settings/biometrics/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    const-string v5, "security_settings_face_require_confirmation"

    .line 123
    invoke-virtual {p0, v5}, Lcom/android/settings/biometrics/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x4

    new-array v7, v7, [Landroidx/preference/Preference;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v2, 0x3

    aput-object v5, v7, v2

    .line 125
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lcom/android/settings/biometrics/face/FaceSettings;->i:Ljava/util/List;

    const-string v2, "security_settings_face_delete_faces_container"

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->j:Landroidx/preference/Preference;

    const-string v2, "security_settings_face_enroll_faces_container"

    .line 128
    invoke-virtual {p0, v2}, Lcom/android/settings/biometrics/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->k:Landroidx/preference/Preference;

    .line 131
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/core/a;

    .line 132
    instance-of v4, v3, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;

    if-eqz v4, :cond_1

    .line 133
    check-cast v3, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;

    iget v4, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSettingsPreferenceController;->setUserId(I)V

    goto :goto_0

    .line 134
    :cond_1
    instance-of v4, v3, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    if-eqz v4, :cond_0

    .line 135
    check-cast v3, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget v4, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    invoke-virtual {v3, v4}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setUserId(I)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->f:Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    invoke-virtual {v2, v3}, Lcom/android/settings/biometrics/face/FaceSettingsRemoveButtonPreferenceController;->setUserId(I)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceSettings;->a:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/face/FaceSettings;->removePreference(Ljava/lang/String;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    if-nez p1, :cond_5

    .line 150
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->b:Landroid/hardware/face/FaceManager;

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v3

    .line 151
    new-instance v0, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x4

    const p1, 0x7f1213c3

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;JI)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "FaceSettings"

    const-string v0, "Password not set"

    .line 155
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->finish()V

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 200
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->b:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    move-result v0

    if-gez v0, :cond_0

    .line 204
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "revokeChallenge failed, result: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 163
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->e:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->setToken([B)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->g:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setToken([B)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->b:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->c:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->k:Landroidx/preference/Preference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceSettings;->j:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceSettings;->d:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method
