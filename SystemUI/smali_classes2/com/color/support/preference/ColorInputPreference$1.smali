.class Lcom/color/support/preference/ColorInputPreference$1;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 132
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference$1;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/color/support/preference/ColorInputPreference$1;->this$0:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p0}, Lcom/color/support/preference/ColorInputPreference;->access$000(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object p0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->selectAll()V

    return-void
.end method
