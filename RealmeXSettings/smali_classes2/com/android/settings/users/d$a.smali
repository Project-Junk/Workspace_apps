.class final Lcom/android/settings/users/d$a;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/Runnable;

.field final c:Lcom/android/settingslib/g$a;

.field final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/android/settings/users/d$a;->a:Landroid/content/Context;

    .line 419
    iput-object p2, p0, Lcom/android/settings/users/d$a;->e:Ljava/lang/String;

    .line 420
    iput-object p4, p0, Lcom/android/settings/users/d$a;->b:Ljava/lang/Runnable;

    .line 422
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 423
    invoke-static {p1, p3, p2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/d$a;->c:Lcom/android/settingslib/g$a;

    .line 425
    iget-object p1, p0, Lcom/android/settings/users/d$a;->a:Landroid/content/Context;

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/users/d$a;->d:Z

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/android/settings/users/d$a;->c:Lcom/android/settingslib/g$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/settings/users/d$a;->e:Ljava/lang/String;

    return-object v0
.end method
