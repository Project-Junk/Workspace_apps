.class Lcom/color/support/widget/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/d;->a(III[FLcom/color/support/widget/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/d;


# direct methods
.method constructor <init>(Lcom/color/support/widget/d;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/d$1;->a:Lcom/color/support/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/color/support/widget/d$1;->a:Lcom/color/support/widget/d;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1, p1}, Lcom/color/support/widget/d;->a(Lcom/color/support/widget/d;ZZZ)V

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
