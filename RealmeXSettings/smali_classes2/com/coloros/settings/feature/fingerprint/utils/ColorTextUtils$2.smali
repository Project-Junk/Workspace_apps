.class final Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$2;
.super Ljava/lang/Object;
.source "ColorTextUtils.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->addIllgalNameInputFilter(Landroid/widget/EditText;Landroid/widget/Toast;)V
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

    .line 133
    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$2;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 138
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->containsIllegalCharFileName(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils;->access$000(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 139
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/utils/ColorTextUtils$2;->val$toast:Landroid/widget/Toast;

    if-eqz p2, :cond_1

    .line 140
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    :cond_1
    if-eqz p4, :cond_2

    .line 143
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_2
    return-object p1
.end method
