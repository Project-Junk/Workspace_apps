.class final Lcom/android/settings/users/c$2$1;
.super Landroid/os/AsyncTask;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/c$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/c$2;


# direct methods
.method constructor <init>(Lcom/android/settings/users/c$2;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/users/c$2$1;->a:Lcom/android/settings/users/c$2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1171
    iget-object p1, p0, Lcom/android/settings/users/c$2$1;->a:Lcom/android/settings/users/c$2;

    iget-object p1, p1, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    .line 2050
    iget-object p1, p1, Lcom/android/settings/users/c;->c:Landroid/os/UserManager;

    .line 1171
    iget-object v0, p0, Lcom/android/settings/users/c$2$1;->a:Lcom/android/settings/users/c$2;

    iget-object v0, v0, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    .line 3050
    iget-object v0, v0, Lcom/android/settings/users/c;->b:Landroid/os/UserHandle;

    .line 1171
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/users/c$2$1;->a:Lcom/android/settings/users/c$2;

    iget-object v1, v1, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    .line 4050
    iget-object v1, v1, Lcom/android/settings/users/c;->a:Lcom/android/settings/users/d;

    .line 4136
    iget-object v1, v1, Lcom/android/settings/users/d;->f:Landroid/graphics/Bitmap;

    .line 1171
    invoke-virtual {p1, v0, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return-object p1
.end method
