.class public final Lcom/android/settings/accessibility/c;
.super Landroid/app/AlertDialog;
.source "UserCreatingDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f13044f

    .line 28
    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/c;->setCancelable(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/accessibility/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/accessibility/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02e7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03dc

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f121806

    .line 36
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/c;->setView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/accessibility/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7e1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x110

    .line 41
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/accessibility/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
