.class final Lcom/coloros/settings/feature/security/a$b$3;
.super Ljava/lang/Object;
.source "ColorTrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/TrustedCredentialsSettings$c;

.field final synthetic b:Lcom/coloros/settings/feature/security/a$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/a$b;Lcom/android/settings/TrustedCredentialsSettings$c;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/coloros/settings/feature/security/a$b$3;->b:Lcom/coloros/settings/feature/security/a$b;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/a$b$3;->a:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 278
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a$b$3;->b:Lcom/coloros/settings/feature/security/a$b;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/a$b;->b(Lcom/coloros/settings/feature/security/a$b;)Lcom/coloros/settings/feature/security/a$a;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/security/a$b$3;->a:Lcom/android/settings/TrustedCredentialsSettings$c;

    invoke-interface {p1, p2}, Lcom/coloros/settings/feature/security/a$a;->b(Lcom/android/settings/TrustedCredentialsSettings$c;)V

    .line 279
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a$b$3;->b:Lcom/coloros/settings/feature/security/a$b;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/security/a$b;->b()V

    return-void
.end method
