.class public final synthetic Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$szOfvmhJYyYGW51MZQNoUHz9_w8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

.field private final synthetic f$1:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$szOfvmhJYyYGW51MZQNoUHz9_w8;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iput-object p2, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$szOfvmhJYyYGW51MZQNoUHz9_w8;->f$1:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$szOfvmhJYyYGW51MZQNoUHz9_w8;->f$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    iget-object v1, p0, Lcom/android/settings/inputmethod/-$$Lambda$PhysicalKeyboardFragment$szOfvmhJYyYGW51MZQNoUHz9_w8;->f$1:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;

    invoke-static {v0, v1, p1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->lambda$szOfvmhJYyYGW51MZQNoUHz9_w8(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$a;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
