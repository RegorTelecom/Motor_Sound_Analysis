function Clean_signal = Clean(Signal, Fs, Start, End)
    start_delete = round(Start * Fs);

    if End == 0
        Clean_signal = Signal(start_delete+1:end);  % Cut the siganl
    else
        end_delete = round(End * Fs);
        samples_until_end = end_delete - start_delete;
        Clean_signal = Signal(start_delete+1:samples_until_end);  % Cut the siganl
    end
end