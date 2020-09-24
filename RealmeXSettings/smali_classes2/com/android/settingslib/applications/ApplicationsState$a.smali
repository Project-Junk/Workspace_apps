.class public final Lcom/android/settingslib/applications/ApplicationsState$a;
.super Lcom/android/settingslib/applications/ApplicationsState$f;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1565
    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$f;-><init>()V

    .line 1566
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    .line 1567
    iput-wide p3, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->b:J

    .line 1568
    iput-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    const-wide/16 p2, -0x1

    .line 1569
    iput-wide p2, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->d:J

    const/4 p2, 0x1

    .line 1570
    iput-boolean p2, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->p:Z

    .line 1571
    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState$a;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 1575
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->g:Z

    if-nez v0, :cond_3

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 1577
    iput-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->g:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1580
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->g:Z

    .line 1581
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1582
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    :cond_3
    return-void
.end method
