.class public final Lcom/coloros/settingslib/applications/ApplicationsState$a;
.super Lcom/coloros/settingslib/applications/ApplicationsState$h;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Landroid/content/pm/ApplicationInfo;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:J

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1674
    invoke-direct {p0}, Lcom/coloros/settingslib/applications/ApplicationsState$h;-><init>()V

    const/4 v0, 0x0

    .line 1675
    iput-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    const-wide/16 v0, 0x0

    .line 1676
    iput-wide v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1665
    invoke-direct {p0}, Lcom/coloros/settingslib/applications/ApplicationsState$h;-><init>()V

    .line 1666
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    .line 1667
    iput-wide p3, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->b:J

    .line 1668
    iput-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, -0x1

    .line 1669
    iput-wide p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    const/4 p2, 0x1

    .line 1670
    iput-boolean p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->p:Z

    .line 1671
    invoke-virtual {p0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 1680
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->g:Z

    if-nez v0, :cond_3

    .line 1681
    :cond_0
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 1682
    iput-boolean p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->g:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1685
    iput-boolean v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->g:Z

    .line 1686
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1687
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    .line 1692
    :cond_3
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_4

    .line 1694
    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object p1

    .line 1695
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Loppo/util/OppoMultiLauncherUtil;->getAliasByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method final a(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z
    .locals 3

    .line 1701
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1702
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    return v2

    .line 1706
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->g:Z

    const-string p2, "sym_app_on_sd_unavailable_icon"

    .line 1708
    invoke-static {p1, p2}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1711
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->g:Z

    if-nez p1, :cond_2

    .line 1714
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1715
    iput-boolean v2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->g:Z

    .line 1716
    iget-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    return v2

    :cond_2
    :goto_0
    return v1
.end method
