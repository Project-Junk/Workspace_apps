.class public final synthetic Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$FwHYygKWy9HBoIkqzJeuKXX148M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private final synthetic f$0:Landroid/view/Window;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$FwHYygKWy9HBoIkqzJeuKXX148M;->f$0:Landroid/view/Window;

    iput p2, p0, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$FwHYygKWy9HBoIkqzJeuKXX148M;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$FwHYygKWy9HBoIkqzJeuKXX148M;->f$0:Landroid/view/Window;

    iget v1, p0, Lcom/coloros/settings/wizard/-$$Lambda$ColorWizardRegionPicker$FwHYygKWy9HBoIkqzJeuKXX148M;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/wizard/ColorWizardRegionPicker;->lambda$FwHYygKWy9HBoIkqzJeuKXX148M(Landroid/view/Window;II)V

    return-void
.end method
