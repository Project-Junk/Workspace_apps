.class final Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
