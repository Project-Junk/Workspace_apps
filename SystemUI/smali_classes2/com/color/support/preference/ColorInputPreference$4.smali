.class Lcom/color/support/preference/ColorInputPreference$4;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/ColorInputPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/preference/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/color/support/preference/ColorInputPreference;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 338
    check-cast p1, Landroid/widget/EditText;

    .line 339
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0, p2}, Lcom/color/support/preference/ColorInputPreference;->access$502(Lcom/color/support/preference/ColorInputPreference;Z)Z

    .line 340
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->access$600(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$ContentWatcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    new-instance v2, Lcom/color/support/preference/ColorInputPreference$ContentWatcher;

    invoke-direct {v2, v0, v1}, Lcom/color/support/preference/ColorInputPreference$ContentWatcher;-><init>(Lcom/color/support/preference/ColorInputPreference;Lcom/color/support/preference/ColorInputPreference$1;)V

    invoke-static {v0, v2}, Lcom/color/support/preference/ColorInputPreference;->access$602(Lcom/color/support/preference/ColorInputPreference;Lcom/color/support/preference/ColorInputPreference$ContentWatcher;)Lcom/color/support/preference/ColorInputPreference$ContentWatcher;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->access$800(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 345
    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v1}, Lcom/color/support/preference/ColorInputPreference;->access$400(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v1}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getSelectionStart()I

    move-result v1

    .line 348
    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getSelectionEnd()I

    move-result v4

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 350
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v4, v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->access$800(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->access$600(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$ContentWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    .line 360
    :cond_3
    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->access$600(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$ContentWatcher;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 361
    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->access$800(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/color/support/preference/ColorInputPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->access$200(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 362
    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->access$800(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/color/support/preference/ColorInputPreference;->setContent(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v0, :cond_7

    .line 365
    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    .line 366
    invoke-static {v5}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    .line 367
    invoke-static {v5}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 368
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    int-to-float v4, v4

    invoke-virtual {v5, v0, v2, v4, v1}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v1

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_6

    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->access$200(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 372
    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/color/support/preference/ColorInputPreference;->access$300(Lcom/color/support/preference/ColorInputPreference;C)Z

    move-result v4

    const-string v5, "..."

    if-eqz v4, :cond_5

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 376
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :goto_1
    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v1, v2}, Lcom/color/support/preference/ColorInputPreference;->access$402(Lcom/color/support/preference/ColorInputPreference;Z)Z

    .line 379
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 381
    :cond_6
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1, v3}, Lcom/color/support/preference/ColorInputPreference;->access$402(Lcom/color/support/preference/ColorInputPreference;Z)Z

    .line 385
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference$4;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p0}, Lcom/color/support/preference/ColorInputPreference;->access$800(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/color/support/preference/ColorInputPreference;->access$900(Lcom/color/support/preference/ColorInputPreference;ZZ)V

    return-void
.end method
