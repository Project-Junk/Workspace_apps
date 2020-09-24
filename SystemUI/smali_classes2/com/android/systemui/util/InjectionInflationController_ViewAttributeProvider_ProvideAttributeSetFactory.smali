.class public final Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;
.super Ljava/lang/Object;
.source "InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/util/AttributeSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->module:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;
    .locals 1

    .line 25
    new-instance v0, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;-><init>(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-object v0
.end method

.method public static proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->provideAttributeSet()Landroid/util/AttributeSet;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AttributeSet;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/util/AttributeSet;
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->module:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->provideAttributeSet()Landroid/util/AttributeSet;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/AttributeSet;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->get()Landroid/util/AttributeSet;

    move-result-object p0

    return-object p0
.end method
