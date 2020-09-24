.class public final synthetic Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManagerCompat$qqxo6zeGlj4E8y3xAY3KdKVpDWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManagerCompat$qqxo6zeGlj4E8y3xAY3KdKVpDWM;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/inputmethod/-$$Lambda$InputMethodAndSubtypeEnablerManagerCompat$qqxo6zeGlj4E8y3xAY3KdKVpDWM;->f$0:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    check-cast p1, Landroidx/preference/Preference;

    check-cast p2, Landroidx/preference/Preference;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->lambda$qqxo6zeGlj4E8y3xAY3KdKVpDWM(Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;Landroidx/preference/Preference;Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method
