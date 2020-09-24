.class final Lcom/coloros/settings/widget/ColorInputPreference$1;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/widget/ColorInputPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/ColorInputPreference;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$1;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$1;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->selectAll()V

    return-void
.end method
