.class public Lcom/android/settings/applications/d$a;
.super Ljava/lang/Object;
.source "AppStateAppOpsBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/os/UserHandle;

.field public c:Landroid/content/pm/PackageInfo;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lcom/android/settings/applications/d$a;->a:Ljava/lang/String;

    const/4 p1, 0x3

    .line 324
    iput p1, p0, Lcom/android/settings/applications/d$a;->f:I

    .line 325
    iput-object p2, p0, Lcom/android/settings/applications/d$a;->b:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 332
    iget v0, p0, Lcom/android/settings/applications/d$a;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 333
    iget-boolean v0, p0, Lcom/android/settings/applications/d$a;->d:Z

    return v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
