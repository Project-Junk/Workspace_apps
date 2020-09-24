.class final Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;
.super Landroid/os/CountDownTimer;
.source "PowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;J)V
    .locals 2

    .line 128
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->d(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->b(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity$2;->a:Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;

    const v0, 0x7f1216a3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->c(Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/PowerOffPromptActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
