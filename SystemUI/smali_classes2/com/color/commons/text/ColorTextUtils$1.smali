.class final Lcom/color/commons/text/ColorTextUtils$1;
.super Ljava/lang/Object;
.source "ColorTextUtils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/commons/text/ColorTextUtils;->addEmojiInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/color/commons/text/ColorTextUtils$1;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/color/commons/text/ColorTextUtils;->containsEmoji(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 85
    iget-object p0, p0, Lcom/color/commons/text/ColorTextUtils$1;->val$toast:Landroid/widget/Toast;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    if-eqz p4, :cond_1

    .line 89
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method
