.class final Lcom/color/support/preference/ColorActivityDialogFragment$2;
.super Ljava/lang/Object;
.source "ColorActivityDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/ColorActivityDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/preference/ColorActivityDialogFragment;


# direct methods
.method constructor <init>(Lcom/color/support/preference/ColorActivityDialogFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/color/support/preference/ColorActivityDialogFragment$2;->a:Lcom/color/support/preference/ColorActivityDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/color/support/preference/ColorActivityDialogFragment$2;->a:Lcom/color/support/preference/ColorActivityDialogFragment;

    invoke-static {p1}, Lcom/color/support/preference/ColorActivityDialogFragment;->a(Lcom/color/support/preference/ColorActivityDialogFragment;)Landroidx/appcompat/app/AppCompatDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
