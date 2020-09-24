.class final Lcom/android/settings/users/c$1;
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
.field final synthetic a:Lcom/android/settings/users/c;


# direct methods
.method constructor <init>(Lcom/android/settings/users/c;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/settings/users/c$1;->a:Lcom/android/settings/users/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 186
    iget-object p1, p0, Lcom/android/settings/users/c$1;->a:Lcom/android/settings/users/c;

    invoke-virtual {p1}, Lcom/android/settings/users/c;->a()V

    return-void
.end method
