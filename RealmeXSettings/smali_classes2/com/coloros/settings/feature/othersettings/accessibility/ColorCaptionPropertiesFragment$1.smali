.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment$1;
.super Ljava/lang/Object;
.source "ColorCaptionPropertiesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->highlightPreferenceForce()V

    return-void
.end method
