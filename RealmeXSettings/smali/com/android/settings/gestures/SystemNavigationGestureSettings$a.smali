.class final Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;
.super Lcom/android/settingslib/widget/g;
.source "SystemNavigationGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/SystemNavigationGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 350
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 351
    iput-object p1, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;->b:Ljava/lang/CharSequence;

    .line 352
    iput-object p2, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;->a:Ljava/lang/CharSequence;

    .line 353
    iput-object p3, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/settings/gestures/SystemNavigationGestureSettings$a;->c:Ljava/lang/String;

    return-object v0
.end method
