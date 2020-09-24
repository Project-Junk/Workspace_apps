.class public final Lcom/android/settings/enterprise/p;
.super Ljava/lang/Object;
.source "EnterprisePrivacyFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/enterprise/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/p$a;
    }
.end annotation


# static fields
.field private static final g:I


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/admin/DevicePolicyManager;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Landroid/os/UserManager;

.field private final e:Landroid/net/ConnectivityManager;

.field private final f:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/enterprise/p;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/net/ConnectivityManager;Landroid/content/res/Resources;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/p;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    .line 57
    iput-object p3, p0, Lcom/android/settings/enterprise/p;->c:Landroid/content/pm/PackageManager;

    .line 58
    iput-object p4, p0, Lcom/android/settings/enterprise/p;->d:Landroid/os/UserManager;

    .line 59
    iput-object p5, p0, Lcom/android/settings/enterprise/p;->e:Landroid/net/ConnectivityManager;

    .line 60
    iput-object p6, p0, Lcom/android/settings/enterprise/p;->f:Landroid/content/res/Resources;

    return-void
.end method

.method private u()Landroid/content/ComponentName;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->c:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private v()Landroid/content/pm/UserInfo;
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->d:Landroid/os/UserManager;

    sget v1, Lcom/android/settings/enterprise/p;->g:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 258
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private w()I
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->v()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0

    :cond_0
    const/16 v0, -0x2710

    return v0
.end method

.method private x()Landroid/content/Intent;
    .locals 5

    .line 274
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->u()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 280
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/enterprise/p;->f:Landroid/content/res/Resources;

    const v4, 0x7f1205fc

    .line 281
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    .line 283
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 284
    iget-object v2, p0, Lcom/android/settings/enterprise/p;->c:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 285
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private y()Landroid/content/Intent;
    .locals 6

    .line 293
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->w()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    return-object v1

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 304
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/enterprise/p;->f:Landroid/content/res/Resources;

    const v5, 0x7f1205fc

    .line 305
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 307
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 308
    iget-object v3, p0, Lcom/android/settings/enterprise/p;->c:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->u()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/enterprise/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->w()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 6

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/enterprise/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/settings/enterprise/p;->f:Landroid/content/res/Resources;

    const v4, 0x7f120823

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/p;->f:Landroid/content/res/Resources;

    const v3, 0x7f120821

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/android/settings/enterprise/p;->f:Landroid/content/res/Resources;

    const v3, 0x7f120822

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    iget-object v1, p0, Lcom/android/settings/enterprise/p;->f:Landroid/content/res/Resources;

    const v3, 0x7f120bf0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/android/settings/enterprise/p$a;

    iget-object v4, p0, Lcom/android/settings/enterprise/p;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/enterprise/p$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public final e()Ljava/util/Date;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastSecurityLogRetrievalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public final f()Ljava/util/Date;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastBugReportRequestTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public final g()Ljava/util/Date;
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getLastNetworkLogRetrievalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public final h()Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isSecurityLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isNetworkLoggingEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->e:Landroid/net/ConnectivityManager;

    sget v1, Lcom/android/settings/enterprise/p;->g:I

    invoke-static {v0, v1}, Lcom/android/settings/vpn2/d;->a(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->w()I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/settings/enterprise/p;->e:Landroid/net/ConnectivityManager;

    .line 140
    invoke-static {v1, v0}, Lcom/android/settings/vpn2/d;->a(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()I
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    sget v1, Lcom/android/settings/enterprise/p;->g:I

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    sget v2, Lcom/android/settings/enterprise/p;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 3

    .line 162
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->w()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    return v1

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public final o()Ljava/lang/String;
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isCurrentInputMethodSetByOwner()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v2, Lcom/android/settings/enterprise/p;->g:I

    const-string v3, "default_input_method"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 184
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/enterprise/p;->c:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    sget v4, Lcom/android/settings/enterprise/p;->g:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/enterprise/p;->c:Landroid/content/pm/PackageManager;

    .line 185
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public final p()I
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/os/UserHandle;

    sget v2, Lcom/android/settings/enterprise/p;->g:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 197
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q()I
    .locals 4

    .line 202
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->w()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    return v1

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 210
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/settings/enterprise/p;->d:Landroid/os/UserManager;

    sget v1, Lcom/android/settings/enterprise/p;->g:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 217
    iget-object v3, p0, Lcom/android/settings/enterprise/p;->b:Landroid/app/admin/DevicePolicyManager;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 218
    invoke-virtual {v3, v2}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 220
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final s()Z
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->x()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->y()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final t()Z
    .locals 4

    .line 233
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->x()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/settings/enterprise/p;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->y()Landroid/content/Intent;

    move-result-object v0

    .line 240
    invoke-direct {p0}, Lcom/android/settings/enterprise/p;->v()Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 242
    iget-object v3, p0, Lcom/android/settings/enterprise/p;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
