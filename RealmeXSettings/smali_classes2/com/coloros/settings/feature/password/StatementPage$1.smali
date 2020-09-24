.class final Lcom/coloros/settings/feature/password/StatementPage$1;
.super Ljava/lang/Object;
.source "StatementPage.java"

# interfaces
.implements Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/StatementPage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/StatementPage;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/StatementPage;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/coloros/settings/feature/password/StatementPage$1;->a:Lcom/coloros/settings/feature/password/StatementPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 3

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.bootreg.activity.statementpage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "statement_intent_flag"

    const/4 v2, 0x2

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/password/StatementPage$1;->a:Lcom/coloros/settings/feature/password/StatementPage;

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 122
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/coloros/settings/feature/password/StatementPage$1;->a:Lcom/coloros/settings/feature/password/StatementPage;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/password/StatementPage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "StatementPage"

    const-string v1, "onClick ActivityNotFoundException action:com.coloros.bootreg.activity.statementpage"

    .line 126
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
