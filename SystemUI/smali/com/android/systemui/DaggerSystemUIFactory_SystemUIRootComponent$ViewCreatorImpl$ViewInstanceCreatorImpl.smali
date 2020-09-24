.class final Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIFactory_SystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

.field private final viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 1785
    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    iput-object p1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$1;)V
    .locals 0

    .line 1780
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method


# virtual methods
.method public createKeyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 7

    .line 1865
    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1867
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1869
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1870
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1871
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1872
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$5000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1873
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/keyguard/clock/ClockManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V

    return-object v6
.end method

.method public createKeyguardMessageArea()Lcom/android/keyguard/KeyguardMessageArea;
    .locals 3

    .line 1890
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1892
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1894
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1895
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1896
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createKeyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;
    .locals 4

    .line 1878
    new-instance v0, Lcom/android/keyguard/KeyguardSliceView;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1880
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1882
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1883
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1884
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1885
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createLockIcon()Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 10

    .line 1901
    new-instance v9, Lcom/android/systemui/statusbar/phone/LockIcon;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1903
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1905
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1906
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1907
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1908
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1909
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1910
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/policy/AccessibilityController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1911
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1912
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/dock/DockManager;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1913
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$9800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Landroid/os/Handler;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/AccessibilityController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/dock/DockManager;Landroid/os/Handler;)V

    return-object v9
.end method

.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 10

    .line 1818
    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1820
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1822
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1824
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1825
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1826
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1827
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7700(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/AmbientPulseManager;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1828
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1829
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1830
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1831
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1832
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$7000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1833
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1818
    invoke-static/range {v1 .. v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout_Factory;->newNotificationStackScrollLayout(Landroid/content/Context;Landroid/util/AttributeSet;ZLjava/lang/Object;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    return-object p0
.end method

.method public createPanelView()Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 8

    .line 1838
    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1840
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1842
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1843
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11100(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1844
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1845
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11300(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1846
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1847
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11200(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1848
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$11900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1849
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;)V

    return-object v7
.end method

.method public createQSCarrierGroup()Lcom/android/systemui/qs/QSCarrierGroup;
    .locals 4

    .line 1854
    new-instance v0, Lcom/android/systemui/qs/QSCarrierGroup;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1856
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1858
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v3, v3, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1859
    invoke-static {v3}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1400(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v3

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1860
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/qs/QSCarrierGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method

.method public createQSPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 3

    .line 1918
    new-instance v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1920
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1922
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1923
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method

.method public createQsFooter()Lcom/android/systemui/qs/QSFooterImpl;
    .locals 7

    .line 1805
    new-instance v6, Lcom/android/systemui/qs/QSFooterImpl;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1807
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1809
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1810
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1811
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2000(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1812
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2800(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    .line 1813
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v6
.end method

.method public createQsHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 8

    .line 1791
    new-instance v7, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1793
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1795
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1796
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$2500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1797
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$1500(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1798
    invoke-static {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$3900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    .line 1799
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1800
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$900(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/plugins/ActivityStarter;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/QuickStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v7
.end method

.method public createQuickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 3

    .line 1928
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1930
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 1932
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;

    .line 1933
    invoke-static {p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->access$10600(Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/DumpController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/QuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-object v0
.end method
