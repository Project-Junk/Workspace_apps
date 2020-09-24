.class final Lcom/android/settings/users/UserDetailsSettings$2;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserDetailsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$2;->a:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$2;->a:Lcom/android/settings/users/UserDetailsSettings;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->a(Z)V

    .line 196
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$2;->a:Lcom/android/settings/users/UserDetailsSettings;

    invoke-static {p1}, Lcom/android/settings/users/UserDetailsSettings;->b(Lcom/android/settings/users/UserDetailsSettings;)V

    return-void
.end method
