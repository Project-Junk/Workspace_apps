.class final Lcom/android/settings/dream/CurrentDreamPicker$a;
.super Lcom/android/settingslib/widget/g;
.source "CurrentDreamPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dream/CurrentDreamPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settingslib/i/a$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 105
    iget-object v0, p1, Lcom/android/settingslib/i/a$a;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$a;->a:Ljava/lang/CharSequence;

    .line 106
    iget-object v0, p1, Lcom/android/settingslib/i/a$a;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$a;->b:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object p1, p1, Lcom/android/settingslib/i/a$a;->d:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/CurrentDreamPicker$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$a;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$a;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/settings/dream/CurrentDreamPicker$a;->c:Ljava/lang/String;

    return-object v0
.end method
