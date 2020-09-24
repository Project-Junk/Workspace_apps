.class Lcom/color/support/preference/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/a;->a(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/preference/a;


# direct methods
.method constructor <init>(Lcom/color/support/preference/a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/preference/a$2;->a:Lcom/color/support/preference/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/color/support/preference/a$2;->a:Lcom/color/support/preference/a;

    invoke-static {p0}, Lcom/color/support/preference/a;->a(Lcom/color/support/preference/a;)Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/g;->dismiss()V

    return-void
.end method
