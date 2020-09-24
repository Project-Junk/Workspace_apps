.class final Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmComplexPasswordFragment.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:I

.field final synthetic c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;Landroid/content/Intent;I)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->a:Landroid/content/Intent;

    iput p3, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVerified([BI)V
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->d(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Landroid/os/AsyncTask;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 358
    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->a:Landroid/content/Intent;

    const-string v2, "face_hw_auth__token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 361
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$2;->b:I

    invoke-static {p1, v0, v1, p2, v2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;ZLandroid/content/Intent;II)V

    return-void
.end method
