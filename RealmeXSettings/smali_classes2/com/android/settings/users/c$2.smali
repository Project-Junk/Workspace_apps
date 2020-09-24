.class final Lcom/android/settings/users/c$2;
.super Ljava/lang/Object;
.source "EditUserInfoController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/c;->a(Landroidx/fragment/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/users/c$a;Landroid/os/UserHandle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Lcom/android/settings/users/c$a;

.field final synthetic d:Landroid/graphics/drawable/Drawable;

.field final synthetic e:Landroidx/fragment/app/Fragment;

.field final synthetic f:Lcom/android/settings/users/c;


# direct methods
.method constructor <init>(Lcom/android/settings/users/c;Landroid/widget/EditText;Ljava/lang/CharSequence;Lcom/android/settings/users/c$a;Landroid/graphics/drawable/Drawable;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    iput-object p2, p0, Lcom/android/settings/users/c$2;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/users/c$2;->b:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/users/c$2;->c:Lcom/android/settings/users/c$a;

    iput-object p5, p0, Lcom/android/settings/users/c$2;->d:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/android/settings/users/c$2;->e:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 149
    iget-object p1, p0, Lcom/android/settings/users/c$2;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 151
    iget-object p2, p0, Lcom/android/settings/users/c$2;->b:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    .line 152
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/users/c$2;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 153
    :cond_0
    iget-object p2, p0, Lcom/android/settings/users/c$2;->c:Lcom/android/settings/users/c$a;

    if-eqz p2, :cond_1

    .line 154
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/users/c$a;->a(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    iget-object p2, p0, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    .line 1050
    iget-object p2, p2, Lcom/android/settings/users/c;->c:Landroid/os/UserManager;

    .line 156
    iget-object v0, p0, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    .line 2050
    iget-object v0, v0, Lcom/android/settings/users/c;->b:Landroid/os/UserHandle;

    .line 156
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p2, v0, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 161
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    .line 3050
    iget-object p1, p1, Lcom/android/settings/users/c;->a:Lcom/android/settings/users/d;

    .line 3140
    iget-object p1, p1, Lcom/android/settings/users/d;->g:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object p2, p0, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    .line 4050
    iget-object p2, p2, Lcom/android/settings/users/c;->a:Lcom/android/settings/users/d;

    .line 4136
    iget-object p2, p2, Lcom/android/settings/users/d;->f:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 163
    iget-object p2, p0, Lcom/android/settings/users/c$2;->d:Landroid/graphics/drawable/Drawable;

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 165
    iget-object p2, p0, Lcom/android/settings/users/c$2;->c:Lcom/android/settings/users/c$a;

    if-eqz p2, :cond_3

    .line 166
    invoke-interface {p2, p1}, Lcom/android/settings/users/c$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_3
    new-instance p1, Lcom/android/settings/users/c$2$1;

    invoke-direct {p1, p0}, Lcom/android/settings/users/c$2$1;-><init>(Lcom/android/settings/users/c$2;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/users/c$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    :cond_4
    iget-object p1, p0, Lcom/android/settings/users/c$2;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->removeDialog(I)V

    .line 180
    :cond_5
    iget-object p1, p0, Lcom/android/settings/users/c$2;->f:Lcom/android/settings/users/c;

    invoke-virtual {p1}, Lcom/android/settings/users/c;->a()V

    return-void
.end method
