.class final Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;
.super Landroid/os/AsyncTask;
.source "ColorUserDetailsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;
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
.field final synthetic a:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;->a:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1337
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;->a:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->d(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Landroid/os/UserManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;->a:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->b(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;->a:Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;

    .line 1338
    invoke-static {v1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->c(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Lcom/coloros/settings/feature/multiuser/a;

    move-result-object v1

    .line 2176
    iget-object v1, v1, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    .line 1337
    invoke-virtual {p1, v0, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    return-object p1
.end method
