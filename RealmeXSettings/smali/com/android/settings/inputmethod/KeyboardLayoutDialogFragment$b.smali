.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/input/InputDeviceIdentifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 312
    iput-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;->a:Landroid/hardware/input/InputDeviceIdentifier;

    return-void
.end method


# virtual methods
.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 8

    .line 1317
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;-><init>()V

    .line 1318
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 1319
    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;->a:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v2

    .line 1321
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 1322
    invoke-virtual {v1, v6}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1324
    iget-object v7, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1327
    :cond_1
    iget-object v2, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->a:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1329
    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;->a:Landroid/hardware/input/InputDeviceIdentifier;

    .line 1330
    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1332
    iget-object v2, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_3

    .line 1334
    iget-object v5, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1336
    iput v3, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->b:I

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1342
    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1343
    iget-object v1, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    iput v4, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->b:I

    :cond_4
    return-object v0
.end method

.method public final onStartLoading()V
    .locals 0

    .line 351
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStartLoading()V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;->forceLoad()V

    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    .line 357
    invoke-super {p0}, Landroidx/loader/content/AsyncTaskLoader;->onStopLoading()V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;->cancelLoad()Z

    return-void
.end method
