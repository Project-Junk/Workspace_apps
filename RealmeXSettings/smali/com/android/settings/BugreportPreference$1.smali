.class final Lcom/android/settings/BugreportPreference$1;
.super Ljava/lang/Object;
.source "BugreportPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BugreportPreference;->a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/BugreportPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/BugreportPreference;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->a(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->b(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->c(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->a(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->c(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {v0}, Lcom/android/settings/BugreportPreference;->d(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {p1}, Lcom/android/settings/BugreportPreference;->c(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/BugreportPreference$1;->a:Lcom/android/settings/BugreportPreference;

    invoke-static {p1}, Lcom/android/settings/BugreportPreference;->a(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_3
    return-void
.end method
