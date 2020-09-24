.class final Lcom/android/settings/dream/WhenToDreamPicker$a;
.super Lcom/android/settingslib/widget/g;
.source "WhenToDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dream/WhenToDreamPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/dream/WhenToDreamPicker;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/dream/WhenToDreamPicker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/settings/dream/WhenToDreamPicker$a;->a:Lcom/android/settings/dream/WhenToDreamPicker;

    const/4 p1, 0x1

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 104
    iput-object p2, p0, Lcom/android/settings/dream/WhenToDreamPicker$a;->b:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/android/settings/dream/WhenToDreamPicker$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/dream/WhenToDreamPicker$a;->c:Ljava/lang/String;

    return-object v0
.end method
