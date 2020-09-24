.class public final Lcom/android/settings/utils/b$1;
.super Ljava/lang/Object;
.source "CodeBookDeleteConfirmCountDownDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/utils/b;


# direct methods
.method public constructor <init>(Lcom/android/settings/utils/b;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/utils/b$1;->a:Lcom/android/settings/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lcom/android/settings/utils/b$1;->a:Lcom/android/settings/utils/b;

    iget-object p1, p1, Lcom/android/settings/utils/b;->b:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/android/settings/utils/b$1;->a:Lcom/android/settings/utils/b;

    iget-object p1, p1, Lcom/android/settings/utils/b;->b:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 51
    iget-object p1, p0, Lcom/android/settings/utils/b$1;->a:Lcom/android/settings/utils/b;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settings/utils/b;->b:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
