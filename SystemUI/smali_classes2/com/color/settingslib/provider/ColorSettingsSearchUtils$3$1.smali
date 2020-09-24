.class Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;
.super Ljava/lang/Object;
.source "ColorSettingsSearchUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;->this$0:Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3;

    iput-object p2, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;->val$view:Landroid/view/View;

    iget-object p0, p0, Lcom/color/settingslib/provider/ColorSettingsSearchUtils$3$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
