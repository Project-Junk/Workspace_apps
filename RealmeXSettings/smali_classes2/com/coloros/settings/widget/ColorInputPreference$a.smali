.class final Lcom/coloros/settings/widget/ColorInputPreference$a;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/ColorInputPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/ColorInputPreference;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/widget/ColorInputPreference;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$a;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/widget/ColorInputPreference;B)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/ColorInputPreference$a;-><init>(Lcom/coloros/settings/widget/ColorInputPreference;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 357
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$a;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->c(Lcom/coloros/settings/widget/ColorInputPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$a;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 361
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$a;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/coloros/settings/widget/ColorInputPreference;->e(Lcom/coloros/settings/widget/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;ZZ)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
