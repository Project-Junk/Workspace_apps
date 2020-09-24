.class final Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "ColorVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mFeedbackEnabled:Z

.field private final mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V
    .locals 0

    .line 1946
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 p1, 0x0

    .line 1947
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    .line 2002
    new-instance p1, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$Accessibility$u06-fCKCI8QQZc8zBaYVttDC7Y0;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$Accessibility$u06-fCKCI8QQZc8zBaYVttDC7Y0;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;)V

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;)V
    .locals 0

    .line 1946
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;)Z
    .locals 0

    .line 1946
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;)V
    .locals 0

    .line 1946
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private computeFeedbackEnabled()Z
    .locals 3

    .line 1991
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    .line 1992
    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 1993
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1994
    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    .line 1995
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " asi compnonentName= "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateFeedbackEnabled()V
    .locals 2

    .line 1985
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateFeedbackEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1967
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1973
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public init()V
    .locals 2

    .line 1949
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility$1;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1961
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1962
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 1963
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method public synthetic lambda$new$0$ColorVolumeDialogImpl$Accessibility(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    .line 2003
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1981
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
