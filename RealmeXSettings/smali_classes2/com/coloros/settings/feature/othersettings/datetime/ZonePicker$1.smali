.class final Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;I)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;->b:Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;

    iput p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;->b:Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ah(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;->b:Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;

    .line 278
    invoke-virtual {v1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;->b:Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;->a(Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker;)Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/coloros/settings/feature/othersettings/datetime/ZonePicker$1;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method
