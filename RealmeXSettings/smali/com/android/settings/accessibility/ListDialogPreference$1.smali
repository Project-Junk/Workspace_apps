.class final Lcom/android/settings/accessibility/ListDialogPreference$1;
.super Ljava/lang/Object;
.source "ListDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ListDialogPreference;->a(Lcolor/support/v7/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/ListDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ListDialogPreference;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 158
    iget-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    long-to-int p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/settings/accessibility/ListDialogPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->b(I)V

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference$1;->a:Lcom/android/settings/accessibility/ListDialogPreference;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ListDialogPreference;->c()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
