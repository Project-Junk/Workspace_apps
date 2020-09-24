.class public abstract Lcom/android/settings/notification/NotificationSettingsBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationSettingsBase$a;
    }
.end annotation


# static fields
.field private static final y:Z


# instance fields
.field protected a:Landroid/content/pm/PackageManager;

.field protected b:Lcom/android/settings/notification/k;

.field protected c:Landroid/app/NotificationManager;

.field protected d:Landroid/app/role/RoleManager;

.field protected e:Landroid/content/Context;

.field protected f:I

.field protected g:I

.field protected h:Ljava/lang/String;

.field protected i:Landroid/content/pm/PackageInfo;

.field protected j:Lcom/android/settingslib/g$a;

.field protected k:Landroid/app/NotificationChannelGroup;

.field protected n:Landroid/app/NotificationChannel;

.field protected o:Lcom/android/settings/notification/k$a;

.field protected p:Z

.field protected q:Z

.field protected r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/notification/l;",
            ">;"
        }
    .end annotation
.end field

.field protected s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field protected t:Lcom/android/settings/notification/NotificationSettingsBase$a;

.field protected u:Landroid/content/Intent;

.field protected v:Landroid/os/Bundle;

.field protected final w:Landroid/content/BroadcastReceiver;

.field protected x:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "NotifiSettingsBase"

    const/4 v1, 0x3

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->y:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/android/settings/notification/k;

    invoke-direct {v0}, Lcom/android/settings/notification/k;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->b:Lcom/android/settings/notification/k;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->p:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->r:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->s:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/android/settings/notification/NotificationSettingsBase$a;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettingsBase$a;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->t:Lcom/android/settings/notification/NotificationSettingsBase$a;

    .line 434
    new-instance v0, Lcom/android/settings/notification/NotificationSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationSettingsBase$1;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->w:Landroid/content/BroadcastReceiver;

    .line 448
    sget-object v0, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$wh9ZcJCpswPE8k961ZvEuQ8RZvM;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->x:Ljava/util/Comparator;

    return-void
.end method

.method private static synthetic a(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 2

    .line 450
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miscellaneous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 455
    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 459
    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 268
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 270
    aget-object v3, p2, v2

    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->a:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    .line 275
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to load package "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NotifiSettingsBase"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V
    .locals 1

    .line 403
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 406
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 408
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->b_()V

    return-void
.end method

.method private synthetic a(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 320
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    .line 322
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->setImportance(I)V

    const/4 v2, 0x4

    .line 323
    invoke-virtual {p1, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 325
    check-cast p2, Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v2, 0x0

    .line 326
    invoke-virtual {p2, v2}, Lcom/android/settings/widget/MasterSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/widget/MasterSwitchPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    move v1, v0

    :cond_2
    if-eqz p2, :cond_4

    .line 5345
    check-cast p2, Landroid/graphics/drawable/LayerDrawable;

    const p3, 0x7f0a00c1

    .line 5347
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_4

    if-eqz v1, :cond_3

    .line 5352
    invoke-virtual {p2}, Landroid/graphics/drawable/GradientDrawable;->clearColorFilter()V

    goto :goto_1

    .line 5354
    :cond_3
    new-instance p3, Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    const v2, 0x7f060228

    .line 5355
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {p3, v1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 5354
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 332
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    iget p3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    invoke-static {p2, p3, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    return v0
.end method

.method private c()V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.provider.extra.CHANNEL_ID"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    const-string v3, ":settings:show_fragment_args"

    .line 194
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v3, v2

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    invoke-static {v0, v1, v3}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/android/settings/notification/NotificationSettingsBase;->y:Z

    return v0
.end method

.method private e()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->a:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->d:Landroid/app/role/RoleManager;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->i:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    return-void
.end method

.method private f()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget v1, v1, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/k;->e(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "miscellaneous"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->p:Z

    .line 209
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->p:Z

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget v2, v2, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {v0, v2, v1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/k;->b(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 216
    iput-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->k:Landroid/app/NotificationChannelGroup;

    :cond_3
    return-void
.end method

.method private g()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    const v1, 0x7f1201d6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private h()V
    .locals 7

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v1, v1, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->a:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 234
    sget-boolean v2, Lcom/android/settings/notification/NotificationSettingsBase;->y:Z

    const-string v3, "NotifiSettingsBase"

    if-eqz v2, :cond_1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Found "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preference activities"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " ;_;"

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 239
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 240
    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v4, v4, Lcom/android/settings/notification/k$a;->e:Landroid/content/Intent;

    if-eqz v4, :cond_3

    .line 241
    sget-boolean v4, Lcom/android/settings/notification/NotificationSettingsBase;->y:Z

    if-eqz v4, :cond_2

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ignoring duplicate notification preference activity ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 249
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    const/4 v5, 0x0

    .line 250
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 251
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v4, Lcom/android/settings/notification/k$a;->e:Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_4

    .line 253
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v2, v2, Lcom/android/settings/notification/k$a;->e:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->k:Landroid/app/NotificationChannelGroup;

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v2, v2, Lcom/android/settings/notification/k$a;->e:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->k:Landroid/app/NotificationChannelGroup;

    .line 257
    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.extra.CHANNEL_GROUP_ID"

    .line 256
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0807d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/m;->o(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method public static synthetic lambda$syg3iCU2XgbhIDLDJ0c-1aSMVQo(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/NotificationSettingsBase;->a(Landroid/app/NotificationChannel;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$wh9ZcJCpswPE8k961ZvEuQ8RZvM(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->a(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a(Landroidx/preference/PreferenceGroup;Landroid/app/NotificationChannel;Z)Landroidx/preference/Preference;
    .locals 6

    .line 291
    new-instance v0, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 292
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->j:Lcom/android/settingslib/g$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    if-eqz p2, :cond_2

    .line 2368
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    if-eqz v1, :cond_2

    .line 2369
    iget-boolean v1, v1, Lcom/android/settings/notification/k$a;->g:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    .line 2373
    :cond_1
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isImportanceLockedByCriticalDeviceFunction()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2377
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2381
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2382
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    .line 3361
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    if-eqz v1, :cond_3

    .line 3362
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isImportanceLockedByOEM()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    move p3, v3

    .line 292
    :goto_3
    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterSwitchPreference;->b(Z)V

    const/4 p3, 0x0

    .line 296
    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 297
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_5

    .line 298
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 4082
    :cond_5
    iput v4, v0, Lcom/android/settingslib/TwoTargetPreference;->p:I

    .line 301
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v4, v4, Lcom/android/settings/notification/k$a;->n:Ljava/util/Map;

    .line 304
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/k$b;

    .line 303
    invoke-static {v1, v4}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Lcom/android/settings/notification/k$b;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eqz v1, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/MasterSwitchPreference;->a(Z)V

    .line 306
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 307
    iget v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    const-string v4, "uid"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    const-string v4, "package"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fromSettings"

    .line 310
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    new-instance v2, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v3, Lcom/android/settings/notification/ChannelNotificationSettings;

    .line 312
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v2

    .line 313
    invoke-virtual {v2, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v1

    const v2, 0x7f120eb0

    .line 5063
    invoke-virtual {v1, p3, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p3

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p3

    .line 316
    invoke-virtual {p3}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object p3

    .line 311
    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterSwitchPreference;->setIntent(Landroid/content/Intent;)V

    .line 318
    new-instance p3, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$syg3iCU2XgbhIDLDJ0c-1aSMVQo;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/notification/-$$Lambda$NotificationSettingsBase$syg3iCU2XgbhIDLDJ0c-1aSMVQo;-><init>(Lcom/android/settings/notification/NotificationSettingsBase;Landroid/app/NotificationChannel;)V

    invoke-virtual {v0, p3}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    if-nez p2, :cond_7

    .line 337
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    return-object v0
.end method

.method protected final a(Landroid/app/NotificationChannelGroup;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_1

    .line 389
    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->g:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->u:Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->v:Landroid/os/Bundle;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->a:Landroid/content/pm/PackageManager;

    .line 105
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->c:Landroid/app/NotificationManager;

    .line 106
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->d:Landroid/app/role/RoleManager;

    .line 108
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->v:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->v:Landroid/os/Bundle;

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->u:Landroid/content/Intent;

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->v:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->v:Landroid/os/Bundle;

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->u:Landroid/content/Intent;

    const/4 v0, -0x1

    const-string v1, "app_uid"

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_1
    iput p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    .line 115
    iget p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    if-gez p1, :cond_2

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->a:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->a(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->i:Landroid/content/pm/PackageInfo;

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->i:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_3

    .line 125
    iget p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->g:I

    .line 126
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    iget v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->g:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/h;->d(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->j:Lcom/android/settingslib/g$a;

    .line 130
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->c()V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->e()V

    .line 132
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->f()V

    .line 133
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->h()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/l;

    .line 138
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase;->k:Landroid/app/NotificationChannelGroup;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase;->j:Lcom/android/settingslib/g$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/notification/l;->a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/g$a;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->u:Landroid/content/Intent;

    const-string v0, "NotifiSettingsBase"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->v:Landroid/os/Bundle;

    if-nez p1, :cond_0

    const-string p1, "No intent"

    .line 148
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->g()V

    return-void

    .line 153
    :cond_0
    iget p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->i:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    goto :goto_0

    .line 1413
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->q:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 1416
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->q:Z

    .line 1417
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 1418
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1419
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "Missing package or uid or packageinfo"

    .line 154
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->g()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1423
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1426
    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->q:Z

    .line 1427
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 171
    iget v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->f:I

    const-string v1, "NotifiSettingsBase"

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->i:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->e()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    if-nez v0, :cond_1

    const-string v0, "Can\'t load package"

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    return-void

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->c()V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->f()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->h()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Missing package or uid or packageinfo"

    .line 172
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->finish()V

    return-void
.end method
