.class final Lcom/color/commons/text/ColorTextUtils$3;
.super Ljava/lang/Object;
.source "ColorTextUtils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/commons/text/ColorTextUtils;->addLengthInputFilter(Landroid/widget/EditText;ILandroid/widget/Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$length:I

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(ILandroid/widget/Toast;)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/color/commons/text/ColorTextUtils$3;->val$length:I

    iput-object p2, p0, Lcom/color/commons/text/ColorTextUtils$3;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 128
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p5, 0x0

    if-eqz p3, :cond_1

    .line 129
    iget p3, p0, Lcom/color/commons/text/ColorTextUtils$3;->val$length:I

    if-le p2, p3, :cond_1

    .line 130
    invoke-interface {p1, p5, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 134
    :cond_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p3

    .line 135
    iget p4, p0, Lcom/color/commons/text/ColorTextUtils$3;->val$length:I

    sub-int p6, p4, p3

    if-lez p6, :cond_2

    sub-int p3, p4, p3

    goto :goto_0

    :cond_2
    move p3, p5

    :goto_0
    if-le p2, p3, :cond_4

    .line 138
    iget-object p0, p0, Lcom/color/commons/text/ColorTextUtils$3;->val$toast:Landroid/widget/Toast;

    if-eqz p0, :cond_3

    .line 139
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 141
    :cond_3
    invoke-interface {p1, p5, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1
.end method
