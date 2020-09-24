.class final Lcom/coloros/settings/feature/security/a$b$5;
.super Ljava/lang/Object;
.source "ColorTrustedCredentialsDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/a$b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/coloros/settings/feature/security/a$b;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/a$b;Landroid/view/View;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/coloros/settings/feature/security/a$b$5;->b:Lcom/coloros/settings/feature/security/a$b;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/a$b$5;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b$5;->b:Lcom/coloros/settings/feature/security/a$b;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b$5;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/security/a$b;->a(Lcom/coloros/settings/feature/security/a$b;Landroid/view/View;)V

    return-void
.end method
