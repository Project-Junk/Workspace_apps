.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/users/MultiUserSwitchBarController$a;
.implements Lcom/android/settings/users/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

.field private static final f:Landroid/content/IntentFilter;

.field private static o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroidx/preference/PreferenceGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/users/UserPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Lcom/android/settingslib/RestrictedPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public d:Lcom/android/settings/users/f;

.field public e:Lcom/android/settings/users/c;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private final l:Ljava/lang/Object;

.field private m:Landroid/os/UserManager;

.field private n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/android/settings/users/MultiUserSwitchBarController;

.field private q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field private r:Lcom/android/settings/users/MultiUserFooterPreferenceController;

.field private s:Landroid/os/Bundle;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/os/Handler;

.field private v:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    sput-object v0, Lcom/android/settings/users/UserSettings;->f:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->o:Landroid/util/SparseArray;

    .line 1319
    sget-object v0, Lcom/android/settings/users/-$$Lambda$UserSettings$pNZ2r4anEEi17esdIkOYA-wfpsc;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$pNZ2r4anEEi17esdIkOYA-wfpsc;

    sput-object v0, Lcom/android/settings/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 1322
    new-instance v0, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    .line 176
    iput v0, p0, Lcom/android/settings/users/UserSettings;->g:I

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/android/settings/users/UserSettings;->h:I

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->k:Z

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->l:Ljava/lang/Object;

    .line 184
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->n:Landroid/util/SparseArray;

    .line 188
    new-instance v0, Lcom/android/settings/users/c;

    invoke-direct {v0}, Lcom/android/settings/users/c;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->e:Lcom/android/settings/users/c;

    .line 196
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->u:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;)I
    .locals 1

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/android/settings/users/UserSettings;->g:I

    return v0
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1240
    sget-object v0, Lcom/android/settings/users/UserSettings;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1243
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/multiuser/c;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getDefaultUserIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1242
    invoke-static {p0}, Lcom/coloros/settings/feature/multiuser/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1245
    sget-object p0, Lcom/android/settings/users/UserSettings;->o:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1176
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->encircleUserIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1178
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/g/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/g/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static synthetic a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 1

    .line 1320
    new-instance v0, Lcom/android/settings/users/UserSettings$a;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$a;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V

    return-object v0
.end method

.method private a(IZ)V
    .locals 6

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, -0xb

    if-ne p1, v3, :cond_0

    .line 534
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "guest_user"

    .line 535
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 536
    new-instance p2, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    .line 537
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p2

    .line 538
    invoke-virtual {p2, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const p2, 0x7f12182d

    .line 3063
    invoke-virtual {p1, v1, p2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void

    .line 544
    :cond_0
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 545
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    const-string v5, "user_id"

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v4, v4, Lcom/android/settings/users/f;->d:Z

    if-eqz v4, :cond_1

    .line 546
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 547
    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "new_user"

    .line 548
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 549
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/settings/users/RestrictedProfileSettings;

    .line 550
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 551
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const p2, 0x7f121848

    .line 4063
    invoke-virtual {p1, v1, p2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 554
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object p2

    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne v1, v4, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p2, v0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->shouldJumpInfoSettings(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 557
    invoke-static {p0}, Lcom/android/settings/users/OwnerInfoSettings;->a(Landroidx/fragment/app/Fragment;)V

    return-void

    .line 558
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->d:Z

    invoke-virtual {p2, v3, v0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->shouldLaunchDetailSettings(Landroid/content/pm/UserInfo;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 559
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 560
    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    .line 562
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 563
    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object p2, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 564
    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .line 1053
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->i:Z

    if-eqz v0, :cond_6

    .line 1054
    :cond_0
    invoke-static {p1}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean p1, p1, Lcom/android/settings/users/f;->f:Z

    if-eqz p1, :cond_6

    .line 1055
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    .line 1056
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result p1

    .line 1057
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/users/UserSettings;->i:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 1061
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getMaxRealUsers()I

    move-result p1

    if-gez p1, :cond_2

    .line 1063
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->g()I

    move-result p1

    .line 1065
    :cond_2
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    const v4, 0x7f1217ee

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1067
    :cond_3
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f1217f2

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1071
    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1072
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-object v2, v0, Lcom/android/settings/users/f;->k:Lcom/android/settingslib/g$a;

    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_5
    return-void

    .line 1076
    :cond_6
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "UserSettings"

    const-string p1, "copyMeProfilePhoto: context is null;"

    .line 1273
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1276
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 1278
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 1281
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    .line 1280
    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1285
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/Context;I)Z

    return-void

    :cond_2
    const-string v1, "user"

    .line 1289
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1290
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1291
    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1293
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 1129
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->n:Landroid/util/SparseArray;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 1131
    invoke-direct {p0, p2}, Lcom/android/settings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;I)V
    .locals 1

    .line 6571
    iput p1, p0, Lcom/android/settings/users/UserSettings;->h:I

    const/4 v0, 0x0

    .line 6572
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->i:Z

    .line 6573
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "UserSettings"

    const-string p1, "Cannot show dialog after onPause"

    .line 6574
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6577
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    .line 6578
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    return-void

    :cond_1
    const/4 p1, 0x3

    .line 6580
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 4

    .line 7444
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7447
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7449
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f12185b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 7452
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 7453
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7455
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 7456
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->n:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1100
    new-instance v0, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1117
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic a(ILandroidx/preference/Preference;)Z
    .locals 3

    .line 989
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->disableGuestPreferenceClickListener()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    .line 995
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 994
    invoke-virtual {v0, v2, p2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 997
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 1001
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1003
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return v1
.end method

.method private static a(Landroid/content/Context;I)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "user"

    .line 1262
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1264
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1265
    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 1172
    iget p0, p0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->n:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static b(I)V
    .locals 1

    .line 847
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/users/UserSettings;I)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/android/settings/users/UserSettings;->a(IZ)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->u:Landroid/os/Handler;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/f;->b(Landroid/content/Context;)V

    .line 407
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->d()V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->b()V

    return-void
.end method

.method private c(I)V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->i:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->a(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 503
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic c(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->c(I)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->e:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 420
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f12182d

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    return-void

    .line 425
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 440
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private d(I)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->i:Z

    if-nez v1, :cond_0

    .line 509
    iput p1, p0, Lcom/android/settings/users/UserSettings;->g:I

    const/4 p1, 0x1

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 512
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic e(Lcom/android/settings/users/UserSettings;)V
    .locals 2

    .line 7779
    iget v0, p0, Lcom/android/settings/users/UserSettings;->g:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 7780
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->f()V

    return-void

    .line 7782
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 7789
    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$3;->start()V

    return-void
.end method

.method private e()Z
    .locals 2

    .line 461
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 462
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/android/settings/users/UserSettings;)Lcom/coloros/settings/adaptor/UserSettingsAdaptor;
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object p0

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    const-string v1, "UserSettings"

    if-nez v0, :cond_0

    const-string v0, "Cannot remove current user when switching is disabled"

    .line 795
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 799
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Unable to remove self user"

    .line 802
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private g()I
    .locals 5

    .line 1082
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1083
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 1086
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1088
    invoke-static {v3}, Lcom/coloros/settings/e/a;->a(Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1092
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v2

    return v0
.end method

.method static synthetic g(Lcom/android/settings/users/UserSettings;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/settings/users/UserSettings;->h:I

    return p0
.end method

.method private h()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1121
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1122
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->t:Landroid/graphics/drawable/Drawable;

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/users/UserSettings;)V
    .locals 3

    .line 8466
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    .line 8467
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 8469
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 1365
    const-class v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 1366
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/users/UserSettings;)V
    .locals 1

    .line 8858
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->e:Z

    if-eqz v0, :cond_0

    .line 8861
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->f()V

    :cond_0
    return-void
.end method

.method private j()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1376
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0809d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1377
    invoke-static {v0}, Lcom/coloros/settings/feature/multiuser/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1378
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic k(Lcom/android/settings/users/UserSettings;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/android/settings/users/UserSettings;->g:I

    return p0
.end method

.method static synthetic l(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 3

    .line 9524
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->j:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9525
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static synthetic lambda$ExS5uad9Yfo7xJ-bX53NdLwpA1M(Lcom/android/settings/users/UserSettings;ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->a(ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pNZ2r4anEEi17esdIkOYA-wfpsc(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 2

    .line 10516
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10517
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method static synthetic n(Lcom/android/settings/users/UserSettings;)Z
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->i:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 402
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->c()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 807
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 808
    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->i:Z

    .line 810
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v2

    if-ne p1, v1, :cond_0

    const v1, 0x7f12183f

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f12183e

    .line 811
    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 810
    :goto_0
    invoke-virtual {v2, v1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getAddingUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->j:Ljava/lang/String;

    .line 813
    new-instance v1, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;I)V

    .line 841
    invoke-virtual {v1}, Lcom/android/settings/users/UserSettings$4;->start()V

    .line 842
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final b()V
    .locals 15
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 866
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 872
    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/content/Context;)Z

    move-result v3

    .line 873
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 874
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 876
    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v6, -0xb

    move v7, v6

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 879
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 886
    invoke-static {v8}, Lcom/coloros/settings/e/a;->a(Landroid/content/pm/UserInfo;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 892
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 893
    iget-object v9, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    goto/16 :goto_4

    .line 894
    :cond_2
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 896
    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    .line 907
    :cond_3
    iget-object v11, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v11, v11, Lcom/android/settings/users/f;->d:Z

    if-eqz v11, :cond_5

    if-nez v3, :cond_4

    .line 908
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v11, v2

    goto :goto_1

    :cond_5
    move v11, v9

    .line 909
    :goto_1
    iget-object v12, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v12, v12, Lcom/android/settings/users/f;->d:Z

    if-eqz v12, :cond_6

    if-nez v3, :cond_6

    .line 910
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v12

    if-nez v12, :cond_6

    move v12, v2

    goto :goto_2

    :cond_6
    move v12, v9

    .line 911
    :goto_2
    new-instance v13, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    if-eqz v11, :cond_7

    move-object v11, p0

    goto :goto_3

    :cond_7
    move-object v11, v10

    :goto_3
    if-eqz v12, :cond_8

    move-object v10, p0

    :cond_8
    invoke-direct {v13, p0, v14, v11, v10}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;-><init>(Landroidx/preference/PreferenceFragmentCompat;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 914
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v10

    if-eqz v10, :cond_9

    const v10, 0x7f1217fc

    .line 917
    invoke-virtual {v13, v10}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 919
    :cond_9
    iget-object v10, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v10}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 920
    invoke-virtual {v13, v9}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    move-object v9, v13

    :goto_4
    if-eqz v9, :cond_1

    .line 925
    invoke-static {v8}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/pm/UserInfo;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 926
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_a

    const v10, 0x7f121858

    .line 927
    invoke-virtual {v9, v10}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto :goto_5

    :cond_a
    const v10, 0x7f121857

    .line 929
    invoke-virtual {v9, v10}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 933
    :goto_5
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v10, v10, Lcom/android/settings/users/f;->j:Z

    if-nez v10, :cond_c

    .line 934
    invoke-virtual {v9, p0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 935
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    goto :goto_6

    .line 937
    :cond_b
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_c

    const v10, 0x7f121859

    .line 938
    invoke-virtual {v9, v10}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 940
    :cond_c
    :goto_6
    iget-object v10, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v10, :cond_e

    .line 941
    iget-object v10, p0, Lcom/android/settings/users/UserSettings;->n:Landroid/util/SparseArray;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_d

    .line 943
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 946
    :cond_d
    invoke-direct {p0, v9, v8}, Lcom/android/settings/users/UserSettings;->a(Landroidx/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto/16 :goto_0

    .line 5372
    :cond_e
    :goto_7
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 950
    invoke-virtual {v9, v8}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 955
    :cond_f
    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->i:Z

    if-eqz v1, :cond_10

    .line 956
    new-instance v1, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    const/16 v2, -0xa

    invoke-direct {v1, p0, v2, v10, v10}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;-><init>(Landroidx/preference/PreferenceFragmentCompat;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 958
    invoke-virtual {v1, v9}, Lcom/android/settings/users/UserPreference;->setEnabled(Z)V

    .line 959
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 6372
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 960
    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 961
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    :cond_10
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v1, v1, Lcom/android/settings/users/f;->e:Z

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v1, v1, Lcom/android/settings/users/f;->g:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v1, v1, Lcom/android/settings/users/f;->i:Z

    if-eqz v1, :cond_16

    .line 968
    :cond_11
    new-instance v1, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v2, v2, Lcom/android/settings/users/f;->d:Z

    if-eqz v2, :cond_12

    if-eqz v3, :cond_12

    move-object v2, p0

    goto :goto_8

    :cond_12
    move-object v2, v10

    :goto_8
    invoke-direct {v1, p0, v6, v2, v10}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;-><init>(Landroidx/preference/PreferenceFragmentCompat;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    const v2, 0x7f12182d

    .line 972
    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 974
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v2, "user_guest"

    .line 975
    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v2, v2, Lcom/android/settings/users/f;->h:Z

    if-eqz v2, :cond_13

    .line 978
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-object v2, v2, Lcom/android/settings/users/f;->k:Lcom/android/settingslib/g$a;

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_9

    .line 979
    :cond_13
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v2, v2, Lcom/android/settings/users/f;->j:Z

    if-eqz v2, :cond_14

    .line 980
    invoke-static {v0}, Lcom/android/settingslib/h;->d(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_9

    .line 982
    :cond_14
    invoke-virtual {v1, v10}, Lcom/android/settings/users/UserPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 984
    :goto_9
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v2

    if-nez v2, :cond_15

    .line 985
    invoke-virtual {v1, v9}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 988
    :cond_15
    new-instance v2, Lcom/android/settings/users/-$$Lambda$UserSettings$ExS5uad9Yfo7xJ-bX53NdLwpA1M;

    invoke-direct {v2, p0, v7}, Lcom/android/settings/users/-$$Lambda$UserSettings$ExS5uad9Yfo7xJ-bX53NdLwpA1M;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1010
    :cond_16
    sget-object v1, Lcom/android/settings/users/UserPreference;->a:Ljava/util/Comparator;

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 1015
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 1016
    invoke-direct {p0, v4}, Lcom/android/settings/users/UserSettings;->a(Ljava/util/List;)V

    .line 1020
    :cond_17
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v1, v1, Lcom/android/settings/users/f;->c:Z

    if-eqz v1, :cond_18

    .line 1021
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->a:Landroidx/preference/PreferenceGroup;

    const v2, 0x7f121839

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->setTitle(I)V

    goto :goto_a

    .line 1023
    :cond_18
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v10}, Landroidx/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 1027
    :goto_a
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1028
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->removeGuestPreference()V

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 1032
    invoke-virtual {v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 1033
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2, v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 1034
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->r:Lcom/android/settings/users/MultiUserFooterPreferenceController;

    invoke-virtual {v1, v10}, Lcom/android/settings/users/MultiUserFooterPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 1035
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->a:Landroidx/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v2, v2, Lcom/android/settings/users/f;->f:Z

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 1037
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/Context;)V

    .line 1039
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->f:Z

    if-nez v0, :cond_19

    return-void

    .line 1043
    :cond_19
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserPreference;

    const v2, 0x7fffffff

    .line 1044
    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setOrder(I)V

    .line 1045
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v3, v1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->addUserPreference(Landroidx/preference/PreferenceGroup;Lcom/android/settings/users/UserPreference;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1046
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->a:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 774
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getDialogMetricsCategory(II)I

    move-result p1

    return p1

    :pswitch_0
    const/16 p1, 0x259

    return p1

    :pswitch_1
    const/16 p1, 0x258

    return p1

    :pswitch_2
    const/16 p1, 0x257

    return p1

    :pswitch_3
    const/16 p1, 0x256

    return p1

    :pswitch_4
    const/16 p1, 0x252

    return p1

    :pswitch_5
    const/16 p1, 0x255

    return p1

    :pswitch_6
    const/16 p1, 0x254

    return p1

    :pswitch_7
    const/16 p1, 0x253

    return p1

    :pswitch_8
    const/16 p1, 0x24f

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ace

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 235
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 241
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->shouldShowActionSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 243
    new-instance v1, Lcom/android/settings/users/MultiUserSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/f;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/f;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v1, p1, v2, p0}, Lcom/android/settings/users/MultiUserSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settings/users/MultiUserSwitchBarController$a;)V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->p:Lcom/android/settings/users/MultiUserSwitchBarController;

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->p:Lcom/android/settings/users/MultiUserSwitchBarController;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 246
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 474
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->a(I)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->e:Lcom/android/settings/users/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/c;->a(IILandroid/content/Intent;)V

    .line 484
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_3

    .line 1186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/UserPreference;->d()I

    move-result v0

    .line 1187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a03ca

    if-eq p1, v1, :cond_2

    const v1, 0x7f0a0720

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1190
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_remove_user"

    .line 1190
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1193
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 1196
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->d(I)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1200
    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->a(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 252
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->s:Landroid/os/Bundle;

    .line 254
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    const v1, 0x7f150134

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getUserSettingsXml(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 256
    invoke-static {v1}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 261
    :cond_0
    new-instance v0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v2, "user_settings_add_users_when_locked"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 263
    new-instance v0, Lcom/android/settings/users/MultiUserFooterPreferenceController;

    invoke-direct {v0, v1}, Lcom/android/settings/users/MultiUserFooterPreferenceController;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 264
    invoke-virtual {v0, v2}, Lcom/android/settings/users/MultiUserFooterPreferenceController;->setFooterMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)Lcom/android/settings/users/MultiUserFooterPreferenceController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->r:Lcom/android/settings/users/MultiUserFooterPreferenceController;

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 267
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 268
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->r:Lcom/android/settings/users/MultiUserFooterPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/users/MultiUserFooterPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 271
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz p1, :cond_3

    const-string v0, "adding_user"

    .line 274
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->h:I

    :cond_1
    const-string v0, "removing_user"

    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->g:I

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->e:Lcom/android/settings/users/c;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/c;->a(Landroid/os/Bundle;)V

    .line 283
    :cond_3
    invoke-static {v1}, Lcom/android/settings/users/f;->a(Landroid/content/Context;)Lcom/android/settings/users/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    const-string p1, "user"

    .line 284
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    .line 285
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean p1, p1, Lcom/android/settings/users/f;->a:Z

    if-nez p1, :cond_4

    return-void

    .line 289
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    const-string v0, "user_list"

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->a:Landroidx/preference/PreferenceGroup;

    .line 292
    new-instance v0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    .line 293
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getSettingsHandleForMyUserId(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;-><init>(Landroidx/preference/PreferenceFragmentCompat;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    .line 295
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    const-string v0, "user_me"

    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 297
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean p1, p1, Lcom/android/settings/users/f;->d:Z

    if-eqz p1, :cond_5

    .line 298
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    const v0, 0x7f1217fc

    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    :cond_5
    const-string p1, "user_add"

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    .line 301
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean p1, p1, Lcom/android/settings/users/f;->c:Z

    if-nez p1, :cond_6

    .line 303
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f1217f5

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    .line 305
    :cond_6
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->v:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v4, Lcom/android/settings/users/UserSettings;->f:Landroid/content/IntentFilter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/users/UserSettings;->u:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 310
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->c()V

    const/4 p1, 0x0

    .line 311
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->k:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x2

    const v3, 0x104000a

    const/high16 v4, 0x1040000

    packed-switch p1, :pswitch_data_0

    .line 748
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->s:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, v2}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->onCreateDialog(Landroid/app/Dialog;ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 738
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->e:Lcom/android/settings/users/c;

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    .line 741
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    .line 744
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    move-object v6, p0

    move-object v9, p0

    .line 738
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/users/c;->a(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/users/c$a;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 723
    :pswitch_1
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12182a

    .line 724
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121829

    .line 725
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12182b

    new-instance v2, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 726
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 733
    invoke-virtual {p1, v4, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 734
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 709
    :pswitch_2
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12183d

    .line 710
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121849

    new-instance v2, Lcom/android/settings/users/UserSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$14;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 711
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 718
    invoke-virtual {p1, v4, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 719
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 682
    :pswitch_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 683
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const v3, 0x7f1217f4

    .line 684
    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7f1217f3

    .line 685
    invoke-virtual {p0, v3}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "summary"

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const v6, 0x7f1217f1

    .line 687
    invoke-virtual {p0, v6}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x7f1217f0

    .line 688
    invoke-virtual {p0, v6}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v6, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 692
    new-instance v7, Landroid/widget/SimpleAdapter;

    invoke-virtual {v6}, Lcolor/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0d0380

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    const p1, 0x7f1217fa

    .line 696
    invoke-virtual {v6, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 697
    new-instance p1, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {p1, p0}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v6, v7, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 706
    invoke-virtual {v6}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 619
    :pswitch_4
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1217fe

    .line 620
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 621
    invoke-virtual {p1, v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 622
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 669
    :pswitch_5
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121853

    .line 670
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 671
    invoke-virtual {p1, v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 677
    invoke-virtual {p1, v4, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 678
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 654
    :pswitch_6
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121854

    .line 655
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12184a

    .line 656
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12184c

    new-instance v2, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 657
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12184b

    .line 664
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 665
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 624
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "key_add_user_long_message_displayed"

    .line 626
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    const v7, 0x7f1217f7

    goto :goto_0

    :cond_1
    const v7, 0x7f1217f6

    :goto_0
    if-ne p1, v2, :cond_2

    const/4 v2, 0x1

    .line 633
    :cond_2
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1217f9

    .line 634
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 635
    invoke-virtual {p1, v7}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v0, p0, v2, v6, v5}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 636
    invoke-virtual {p1, v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 649
    invoke-virtual {p1, v4, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 650
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 609
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->g:I

    new-instance v1, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/g;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0a06f9
        0x7f0a0687
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 373
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    .line 374
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->showRemoveUserMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v1, v1, Lcom/android/settings/users/f;->d:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121845

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-interface {p1, v5, v3, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 378
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 382
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_remove_user"

    .line 381
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v1

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/g$a;)V

    .line 386
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 345
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 347
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/settings/users/f;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 586
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 588
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDialogShowing(Landroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->onDialogShowing()V

    .line 594
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->onCreateShowing(Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1208
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->l:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, -0x1

    .line 1209
    :try_start_0
    iput v0, p0, Lcom/android/settings/users/UserSettings;->g:I

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->b()V

    .line 1211
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 0

    .line 599
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 393
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->d(I)V

    return v1

    .line 396
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->k:Z

    .line 340
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1137
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->b:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 1138
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean p1, p1, Lcom/android/settings/users/f;->e:Z

    if-eqz p1, :cond_0

    return v2

    .line 1145
    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1146
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/users/UserSettings;->a(IZ)V

    goto :goto_0

    .line 1151
    :cond_1
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_2

    .line 1152
    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->d()I

    move-result p1

    .line 1154
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->m:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1155
    invoke-static {p1}, Lcom/android/settings/users/UserSettings;->a(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1156
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->u:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    iget p1, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v0, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->c:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_4

    .line 1162
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean p1, p1, Lcom/android/settings/users/f;->c:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    .line 1163
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1165
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->c(I)V

    :cond_4
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 316
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 318
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    iget-boolean v0, v0, Lcom/android/settings/users/f;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->q:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 324
    invoke-virtual {v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->k:Z

    if-eqz v0, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->c()V

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->highlightPreferenceForce()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 356
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->e:Lcom/android/settings/users/c;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/c;->b(Landroid/os/Bundle;)V

    .line 358
    iget v0, p0, Lcom/android/settings/users/UserSettings;->h:I

    const-string v1, "adding_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    iget v0, p0, Lcom/android/settings/users/UserSettings;->g:I

    const-string v1, "removing_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->e:Lcom/android/settings/users/c;

    const/4 v1, 0x1

    .line 2101
    iput-boolean v1, v0, Lcom/android/settings/users/c;->d:Z

    .line 366
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->i()Lcom/coloros/settings/adaptor/UserSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
