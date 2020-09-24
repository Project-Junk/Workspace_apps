.class final Lcom/android/settings/users/d$2;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/d;


# direct methods
.method constructor <init>(Lcom/android/settings/users/d;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/users/d$2;->a:Lcom/android/settings/users/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/settings/users/d$2;->a:Lcom/android/settings/users/d;

    .line 1217
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    iget-object v2, v0, Lcom/android/settings/users/d;->e:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/settings/users/d;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 1219
    iget-object v0, v0, Lcom/android/settings/users/d;->c:Landroidx/fragment/app/Fragment;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
