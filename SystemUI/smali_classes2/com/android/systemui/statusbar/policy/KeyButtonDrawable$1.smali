.class final Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;
.super Landroid/util/FloatProperty;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)Ljava/lang/Float;
    .locals 0

    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getRotation()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;->get(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;F)V
    .locals 0

    .line 57
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setRotation(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;->setValue(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;F)V

    return-void
.end method
