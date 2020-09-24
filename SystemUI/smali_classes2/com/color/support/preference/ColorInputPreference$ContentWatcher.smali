.class Lcom/color/support/preference/ColorInputPreference$ContentWatcher;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/preference/ColorInputPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/preference/ColorInputPreference;


# direct methods
.method private constructor <init>(Lcom/color/support/preference/ColorInputPreference;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference$ContentWatcher;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/support/preference/ColorInputPreference;Lcom/color/support/preference/ColorInputPreference$1;)V
    .locals 0

    .line 401
    invoke-direct {p0, p1}, Lcom/color/support/preference/ColorInputPreference$ContentWatcher;-><init>(Lcom/color/support/preference/ColorInputPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$ContentWatcher;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->access$200(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$ContentWatcher;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/color/support/preference/ColorInputPreference;->access$802(Lcom/color/support/preference/ColorInputPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference$ContentWatcher;->this$0:Lcom/color/support/preference/ColorInputPreference;

    const/4 p1, 0x1

    invoke-static {p0}, Lcom/color/support/preference/ColorInputPreference;->access$800(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/color/support/preference/ColorInputPreference;->access$900(Lcom/color/support/preference/ColorInputPreference;ZZ)V

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
