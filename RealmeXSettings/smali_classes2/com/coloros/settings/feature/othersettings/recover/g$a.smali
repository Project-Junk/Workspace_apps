.class final Lcom/coloros/settings/feature/othersettings/recover/g$a;
.super Landroid/os/AsyncTask;
.source "ResetHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/recover/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/othersettings/recover/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/coloros/settings/feature/othersettings/recover/j;

.field private c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->a:Ljava/lang/ref/WeakReference;

    .line 80
    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->b:Lcom/coloros/settings/feature/othersettings/recover/j;

    return-void
.end method

.method private varargs a()Ljava/lang/Integer;
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/recover/g;

    const/4 v1, 0x3

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ResetHelper"

    if-eqz v0, :cond_1

    .line 4058
    iget-object v3, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    if-nez v3, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->b:Lcom/coloros/settings/feature/othersettings/recover/j;

    .line 5058
    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 107
    invoke-interface {v3, v0}, Lcom/coloros/settings/feature/othersettings/recover/j;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    const-string v0, "doInBackground: host or context is null"

    .line 103
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/recover/g$a;->a()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 73
    check-cast p1, Ljava/lang/Integer;

    .line 5116
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetTask#onPostExecute: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResetHelper"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/recover/g;

    .line 6058
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 5118
    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    const-string p1, "onPostExecute: host context is not activity"

    .line 5119
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7058
    :cond_0
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 5122
    check-cast v2, Landroid/app/Activity;

    .line 5123
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 5128
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->c:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 5129
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5132
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 5142
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->b:Lcom/coloros/settings/feature/othersettings/recover/j;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;)V

    :goto_0
    return-void

    .line 5138
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->b:Lcom/coloros/settings/feature/othersettings/recover/j;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;Z)V

    return-void

    .line 5134
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->b:Lcom/coloros/settings/feature/othersettings/recover/j;

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;Z)V

    return-void

    :cond_6
    :goto_1
    const-string p1, "onPostExecute: activity is finishing or destroyed"

    .line 5124
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 3

    .line 85
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/recover/g;

    if-eqz v0, :cond_2

    .line 1058
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->b:Lcom/coloros/settings/feature/othersettings/recover/j;

    .line 2058
    iget-object v2, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 91
    invoke-interface {v1, v2}, Lcom/coloros/settings/feature/othersettings/recover/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    new-instance v2, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    .line 3058
    iget-object v0, v0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 93
    invoke-direct {v2, v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->c:Landroid/app/Dialog;

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->c:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g$a;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "ResetHelper"

    const-string v1, "onPreExecute: host or context is null"

    .line 88
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
