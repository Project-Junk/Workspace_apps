.class Lcom/color/support/widget/ColorEditText$OppoTextWatcher;
.super Ljava/lang/Object;
.source "ColorEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OppoTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorEditText;


# direct methods
.method private constructor <init>(Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lcom/color/support/widget/ColorEditText$OppoTextWatcher;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/widget/ColorEditText;Lcom/color/support/widget/ColorEditText$1;)V
    .locals 0

    .line 1294
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorEditText$OppoTextWatcher;-><init>(Lcom/color/support/widget/ColorEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1298
    iget-object p0, p0, Lcom/color/support/widget/ColorEditText$OppoTextWatcher;->this$0:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->hasFocus()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/color/support/widget/ColorEditText;->access$400(Lcom/color/support/widget/ColorEditText;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method