.class final Lcom/coloros/settings/ringtone/g$1;
.super Ljava/lang/Object;
.source "RuntimePermissionAlert.java"

# interfaces
.implements Lcom/color/support/widget/ColorSecurityAlertDialog$OnLinkTextClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/ringtone/g;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coloros/settings/ringtone/g;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/g;Landroid/app/Activity;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coloros/settings/ringtone/g$1;->b:Lcom/coloros/settings/ringtone/g;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/g$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLinkTextClick()V
    .locals 3

    .line 152
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.bootreg.activity.statementpage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "statement_intent_flag"

    const/4 v2, 0x2

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lcom/coloros/settings/ringtone/g$1;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuntimePermissionAlert"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
